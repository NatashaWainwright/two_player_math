# puts "Welcome to our Two Player Math Game"

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
    player[:life]
    puts "You lose a life...:("

  end
end

#want to output and keep track of who's turn it is
def game_time
loop do
    @players.each do |player|
        if player[:life]==0
          return
        else
          #do the game methods and adding scores to hash
       end  
   end
end
end

# question
# get_ans
# chk_ans



