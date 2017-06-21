module Tpb
  module Category
    attr_reader :categories

    def self.get(category = :none)
      @@categories[category]
    end

    @@categories ||= {
      none:                 "0",
      all:                  "100",

      # audio
      music:                "101",
      audio_books:          "102",
      audio_clips:          "103",
      flac:                 "104",
      other_audio:          "199",

      # video
      movies:               "201",
      movies_dvdr:          "202",
      music_videos:         "203",
      movie_clips:          "204",
      tv_shows:             "205",
      video_handheld:       "206",
      hd_movies:            "207",
      hd_tv_shows:          "208",
      video_3d:             "209",
      other_video:          "299",

      # applications
      windows:              "301",
      mac:                  "302",
      unix:                 "303",
      application_handheld: "304",
      ios:                  "305",
      android:              "306",
      other_os:             "399",

      # games
      games_pc:             "401",
      games_mac:            "402",
      games_psx:            "403",
      games_xbox:           "404",
      games_wii:            "405",
      games_handheld:       "406",
      games_ios:            "407",
      games_android:        "408",
      other_games:          "499"
    }
  end
end
