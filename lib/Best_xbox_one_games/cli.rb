class BestXboxOneGames::CLI
  
    def call
        BestXboxOneGames::Scraper.scrape_games
      welcome
      display_games
      menu
      goodbye
    end
    
    def welcome
          puts ""
          puts "========================================"
          puts "      Best Xbox One Games of 2020       "
          puts "========================================"
    end
    
   def display_games
      Game.all.each.with_index(1) do |game, i|
        puts "#{i}.   #{game.name}"
      end
    end
    
    def display_info
      Game.all.each.with_index(1) do |game, i|
      end
    end
    
    def menu
      input = nil
      while input != "exit"
        puts "Enter a number for the game you wish to view a brief overview for, type list to see list again, or exit to leave:"
        input = gets.strip.downcase
        
       if input.to_i > 0 && input.to_i < 27
          the_game = display_info[input.to_i-1]
          puts "#{the_game.name} - #{the_game.info}"
        elsif input == "list"
          display_games
        elsif input != "exit"
          puts "Invalid response."
        end
      end
    end

    def goodbye 
        puts <<-'EOF'
         
        ,-.--,             _,.---._           ,-.--, 
        .--.-.  /=/, .'  _..---.  ,-.' , -  `..--.-.  /=/, .' 
        \==\ -\/=/- /  .' .'.-. \/==/_,  ,  - \==\ -\/=/- /   
         \==\ `-' ,/  /==/- '=' /==|   .=.     \==\ `-' ,/    
          |==|,  - |  |==|-,   '|==|_ : ;=:  - ||==|,  - |    
         /==/   ,   \ |==|  .=. \==| , '='     /==/   ,   \   
        /==/, .--, - \/==/- '=' ,\==\ -    ,_ /==/, .--, - \  
        \==\- \/=/ , /==|   -   / '.='. -   .'\==\- \/=/ , /  
         `--`-'  `--``-._`.___,'    `--`--''   `--`-'  `--`  
         
         EOF
    end
end
	