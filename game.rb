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

$winCombinations = [ 
[0,1,2], # top row 
[3,4,5], # middle row 
[6,7,8], # bottom row 
[0,3,6], # left column 
[1,4,7], # center column 
[2,5,8], # right column 
[0,4,8], # left diagonal 
[6,4,2] # right diagonal 
]

def IsWin(table)
    table.each do |row|
        return row[0] if row.uniq.length == 1 && row[0] != nil
      end
    
      # Check columns
      (0..2).each do |col|
        column = [table[0][col], table[1][col], table[2][col]]
        return column[0] if column.uniq.length == 1 && column[0] != nil
      end
    
      # Check diagonals
      diagonal1 = [table[0][0], table[1][1], table[2][2]]
      diagonal2 = [table[0][2], table[1][1], table[2][0]]
      return diagonal1[0] if diagonal1.uniq.length == 1 && diagonal1[0] != nil
      return diagonal2[0] if diagonal2.uniq.length == 1 && diagonal2[0] != nil
    
      return nil
end