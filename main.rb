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
    print "Select cell: "
    selectedCell = gets.to_i
    AssignCell(tableArr, 2, selectedCell)
end

StartGame()