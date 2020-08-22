require './Players'
require './Questions'



class Game

    attr_accessor :current_player

    def initialize
        create_players()
        @current_player = "Player 1"
        turn()
    end

    def create_players
@player_1 = Players.new(1)
@player_2 = Players.new(2)
    end

    def end_game(winner)
        puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    end
    
    def turn
        puts "----- NEW TURN -----"
        question = Questions.new
        puts "#{@current_player}: #{question.question}"
        print "->  "
        response = gets.chomp.to_i

        if response == question.answer
            puts "CORRECT"
        else
            if @current_player == "Player 1"
                @player_1.lives -= 1
            else
                @player_2.lives -= 1
            end
            puts "WRONGO"

        end

        if @player_1.lives <= 0
            end_game(@player_2)
        elsif @player_2.lives <= 0
            end_game(@player_1)
        else

            puts "P1: #{@player_1.lives}/3 vs. P2: #{@player_2.lives}/3"

            if @current_player == "Player 1"
                @current_player = "Player 2"
            else
                @current_player = "Player 1"
            end
                turn()
        end
    end

end