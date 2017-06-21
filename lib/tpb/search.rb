require 'nokogiri'
require 'open-uri'
require 'uri'

module Tpb
  class Search
    attr_reader :torrents, :options

    def self.new(query, opts = {})
      set_opts(opts)

      query    = URI.escape(query)
      doc      = Nokogiri::HTML(open(BASE_URL + '/search/' + query + '/' + @options[:pages].to_s + '/' + @options[:sort_by].to_s + '/' + @options[:category].to_s + ''))
      torrents = []

      doc.css('#searchResult tr').each do |row|
        info  = {}
        info[:title] = row.search('.detLink').text
        next if info[:title] == ''

        info[:seeders]     = row.search('td')[2].text.to_i
        info[:leechers]    = row.search('td')[3].text.to_i
        info[:magnet_link] = row.search('td a')[3]['href']
        info[:category]    = row.search('td a')[0].text
        info[:url]         = row.search('.detLink').attribute('href').to_s
        info[:torrent_id]  = info[:url].split('/')[2]

        torrents.push Torrent.new(info)
      end

      @torrents = torrents
    end

    private

    def self.set_opts(opts = {})
      @options = Hash.new
      @options[:pages]    = opts[:pages] || '2'
      @options[:sort_by]  = SortBy.get(opts[:sort_by])
      @options[:category] = Category.get(opts[:category])
    end
  end
end
