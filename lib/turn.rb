def display_board(xo)
  puts " #{xo[0]} | #{xo[1]} | #{xo[2]} "
  puts "-----------"
  puts " #{xo[3]} | #{xo[4]} | #{xo[5]} "
  puts "-----------"
  puts " #{xo[6]} | #{xo[7]} | #{xo[8]} "
end

def valid_move?(board, index)
  if (index < 0 || index > 8) || position_taken?(board, index)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(num)
  num = num.to_i
  num = num - 1
end

def move(board, index, char = "X")
  board[index] = char
end
