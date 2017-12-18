class Codebreaker
  class Game

    #secret = "4321"
    secret_number = "4321".split("")
    count = 0

      puts "Welcome to Codebreaker"

    loop do

      puts "\nEnter guess:"
      guess = gets.chomp.split("")
        if guess.length !=4
          puts "Try guessing a number with four digits  "

          # first solution to find exact and zero match
          match = guess.map{|e| secret_number.find_index(e) }
          if match == [0, 1, 2, 3]
            puts "++++"
          elsif match == [nil, nil, nil, nil]
            puts " "
          end
          # no need anymore

        else
          x = secret_number.find_index(guess[0])
            if x == 0
            print "+"
            elsif x == nil
            print " "
            else
            print "-"
            end

          x = secret_number.find_index(guess[1])
            if x == 1
            print "+"
            elsif x == nil
            print " "
            else
            print "-"
            end

          x = secret_number.find_index(guess[2])
            if x == 2
            print "+"
            elsif x == nil
            print " "
            else
            print "-"
            end

          x = secret_number.find_index(guess[3])
            if x == 3
            print "+"
            elsif x == nil
            print " "
            else
            print "-"
            end

        count = count+1
      end

    end
  end
end
