# puts "Welcome to our Two Player Math Game"
# puts "Player 1: What does 5 plus 3 equal?"

# @p1="Sapphire"
# @p2="Emerald"
# @lives_score = {
#   p1: 3,
#   p2: 3
# }


def lost_life


end

def question
  @a =1+rand(20)
  @b =rand(1..20)
  @c = @a.to_i + @b.to_i
  puts "#{@p1}What does #{@a} plus #{@b} equal?"
end

def get_ans
  @answer=gets.chomp.to_i
  puts @answer
end

def chk_ans
  if @c==@answer
    puts "Good Job!"

  else
    #decrement life method
    puts "You lose a life...:("

  end
end

#want to output and keep track of who's turn it is
# def your_turn(player)
#   @lives_score.select { |switch| switch [:p1] }

# end

# question
# get_ans
# chk_ans



