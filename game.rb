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

$firstRowRange = 7
$SecondRowRange = 4
$thirdRowRange = 1

def AssignCell(table, playerNumber, cell)
    if cell >= 7
        # 7 8 9
        table[0][cell-$firstRowRange] = GetPlayerSymbol(playerNumber)
    elsif cell >= 4
        # 4 5 6
        table[1][cell-$SecondRowRange] = GetPlayerSymbol(playerNumber)
    elsif cell >= 1
        # 1 2 3
        table[2][cell-$thirdRowRange] = GetPlayerSymbol(playerNumber)
    else
        puts "Please select cells 1 - 9."
    end

    GenTable(table)
end

def GetPlayerSymbol(playerNumber)
    if playerNumber === 1
        return "x"
    elsif playerNumber === 2
        return "o"
    else
        puts "Invalid player number"
    end
end
