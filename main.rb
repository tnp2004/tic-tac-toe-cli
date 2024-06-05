puts "Welcome to Tic-Tac-Toe Command Line"

def GenTable(tableArr)
    puts " _____ "
    tableArr.length.times { |i|
        tableArr[i].length.times { |j|
            print "|"

            # Checking that value is empty?
            if tableArr[i][j] === nil 
                print " "
            end

            print tableArr[i][j]
            if j >= 2
                print "|"
            end
        }
        puts
    }
    puts "-------"
end

# Create table
maxTableRows = 3
tableArr = Array.new(maxTableRows) { Array.new(maxTableRows) }
tableArr[0][1] = "x"
tableArr[1][0] = "o"
tableArr[1][2] = "o"

# Generate table
GenTable(tableArr)