require "./game.rb"

def StartGame
    puts "Welcome to Tic-Tac-Toe Command Line"
    # Create table
    maxTableRows = 3
    maxTableColumns = 3
    playerX = 1
    playerO = 2
    tableArr = Array.new(maxTableColumns) { Array.new(maxTableRows) }
    rounds = maxTableColumns * maxTableRows
    # 7 8 9
    # 4 5 6
    # 1 2 3
    rounds.times {|i|
        playerNumber = i%2===0 ? playerX : playerO
        playerSymbol = playerNumber%2 != 0 ? "X" : "O"
        annouceText = "Player #{playerSymbol} Select cell: "
        print annouceText
        commdInput = GetInput(tableArr, annouceText)
        selectedCell = commdInput.to_i
        AssignCell(tableArr, playerNumber, selectedCell)
        winner = IsWin(tableArr)
        if winner != nil
            puts "The winner is player #{winner.upcase}"
            exit
        end
    }

    puts "Draw"
end

StartGame()