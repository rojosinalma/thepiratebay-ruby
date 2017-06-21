module Tpb
  module SortBy
    attr_reader :sortings

    def self.get(sort_by = :seeders)
      @@sortings[sort_by]
    end

    @@sortings = {
      relevance: "99",
      name_asc:  "2",
      name_desc: "1",
      size:      "5",
      seeders:   "7",
      leechers:  "9",
      type:      "13",
      uploaded:  "3"
    }
  end
end
