module Tpb
  class Torrent

    attr_reader :title,
                :seeders,
                :leechers,
                :magnet_link,
                :category,
                :torrent_id,
                :url

    def initialize(info = {})
      @title       = info[:title]
      @seeders     = info[:seeders]
      @leechers    = info[:leechers]
      @magnet_link = info[:magnet_link]
      @category    = info[:category]
      @torrent_id  = info[:torrent_id]
      @url         = info[:url]
    end
  end
end
