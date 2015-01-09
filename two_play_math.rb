@players = [
  {id:1,
    life: 3,
    score:0,
    name: "Sapphire"},

  {id:2,
    life: 3,
    score:0,
    name: "Emerald"}
]

def dead?
#always test for the positive, check for zero
# enumerate through players
 dead = @players.detect { |player| player[:life] == 0 }
# return any players with lives == 0
# Call .empty? on result set
  !dead.empty?
end

def question
  @a =1+rand(20)
  @b =rand(1..20)
  @c = @a.to_i + @b.to_i
  puts "#{@current_player[:name]}What does #{@a} plus #{@b} equal?"
end

def get_ans
  @answer=gets.chomp.to_i
  puts @answer
end

def chk_ans
  if @c==@answer
    puts "Good Job!"
  else
    # #h.merge(h){|k,hv|hv-1} -->awk
    # #@players.merge(player) {|k,player| player[:life]-1}-->awk
    # players[:life]-->awk
    # make a lose_life method-->aahh
    #@current_player[:life] -= 1 -->want to call a method on its own to do this, ie. decouple responsibility
    lose_life
    puts "You lose a life...:("
  end
end

def lose_life
  #find the index of @players, of the @current_player
  #Update the life of that player in @players
  #return nothing
  @players.each_with_index do |player, i|
    if @current_player[:id]==player[:id]
      @players[i][:life] -=1
    end
  end
end

##want to output and keep track of who's turn it is
def curr_player
  #this is how the players are switching on each turn
  @current_player = @current_player[:id] == 1 ? @players[1] : @players[0] 
end

def pick_a_player
#KISS-->ie. do arrays have methods to randomly get an element? yes, use it.
  @players.sample[:id]
  #@players.each do |player|
      # if rand(1..100) <51 
      #   player[:id] = 1
      #   puts "#{player[:id]}"
         
      # else 
      #   puts "#{player[:id]}"
      #   return player[:id]=2
      # end 
  #end
end


def game_time
puts "Welcome to our Two Player Math Game" 
pick_a_player
  loop do
    curr_player
      @players.each do |player|
          question
          get_ans
          chk_ans
          dead?
      end
  end
end
game_time
#------------CHECKING, AND THINKING FOLLOWS (they say..., else, continue)

# question
# get_ans
# chk_ans
#pick_a_player


# game start
#   init player
#   random pick a player
      #@players.sample[:id]
#   print your turn #{player[:id]}
#     question
#     check_answer
#       good Job
#       take life
#   change player
#   question
#   check_answer