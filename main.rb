require "./game.rb"

def StartGame
    puts "Welcome to Tic-Tac-Toe Command Line"
    # Create table
    maxTableRows = 3
    playerX = 1
    playerO = 2
    tableArr = Array.new(maxTableRows) { Array.new(maxTableRows) }

    # 7 8 9
    # 4 5 6
    # 1 2 3
    9.times {|i|
        playerNumber = i%2===0 ? playerX : playerO
        playerSymbol = playerNumber%2 != 0 ? "X" : "O"
        print "Player #{playerSymbol} Select cell: "
        selectedCell = gets.to_i
        AssignCell(tableArr, playerNumber, selectedCell)
    }
end

StartGame()