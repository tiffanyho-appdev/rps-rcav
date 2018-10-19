class GameController < ApplicationController
    def user_plays_rock
        
        @computer_move = ["rock", "paper", "scissors"].sample
        
        if @computer_move == "rock"
            @outcome = "tied"
        elsif @computer_move == "scissors"
            @outcome = "won"
        elsif @computer_move == "paper"
            @outcome = "lost"
        end
        
        render("move_templates/played_rock.html.erb")
    end
    
    def user_plays_paper
        
        @computer_move = ["rock", "paper", "scissors"].sample
        
        if @computer_move == "rock"
            @outcome = "won"
        elsif @computer_move == "scissors"
            @outcome = "lost"
        elsif @computer_move == "paper"
            @outcome = "tied"
        end
        
        render("move_templates/played_paper.html.erb")
    end
    
    def user_plays_scissors
        
        @computer_move = ["rock", "paper", "scissors"].sample
        
        if @computer_move == "rock"
            @outcome = "lost"
        elsif @computer_move == "scissors"
            @outcome = "tied"
        elsif @computer_move == "paper"
            @outcome = "won"
        end
        
        render("move_templates/played_scissors.html.erb")
    end
end