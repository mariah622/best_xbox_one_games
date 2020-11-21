class BestXboxOneGames::Scraper
  
  
    def self.scrape
      @doc ||= Nokogiri::HTML(open("https://www.techradar.com/best/best-xbox-one-games")).css('div.buying-guide-block')
    end
    
    def self.scrape_games
      self.scrape.each do |ele|
        name = ele.search("h3").text.strip
        info = ele.search("p").text
        Game.new(name, info)
      end
    end
    
  end 