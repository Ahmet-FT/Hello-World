number = rand(1..100)

print "Enter your guess: "

life = 5

until life == 0
   
   guess = gets.to_i
   if !(guess >= 1 && guess <= 100)
      puts "You entered a non valid value! "
      
   elsif number == guess && (guess >= 1 && guess <= 100)
      puts "Congratulations! "
      break
   
   elsif guess < number && (guess >= 1 && guess <= 100)
      puts "enter a larger number: "
      life -= 1
   else
      puts "enter a smaller number: "
      life -= 1
   end
end

if life == 0
   puts "Answer is: #{number}"
end