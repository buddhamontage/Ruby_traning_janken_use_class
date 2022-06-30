class Jankenpon
    
    def game
        program_hand = rand(3)
        
        puts "グー[0]、チョキ[1]、パー[2]"
        player_hand = gets.to_i
        
        janken = ["グー","チョキ","パー"]
        puts "あなたは#{janken[player_hand]}、PCは#{janken[program_hand]}"
        
        if player_hand == 0 && program_hand == 2 || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
            puts "あなたの負け"
            return false
            
        elsif player_hand == program_hand
            puts "あいこ"
            return true
        
        else
            puts "あなたの勝ち"
            return false
        
        end
    end
end


new_game = true


while new_game
    janken_game = Jankenpon.new
    janken_game.game
    new_game = janken_game.game
end
