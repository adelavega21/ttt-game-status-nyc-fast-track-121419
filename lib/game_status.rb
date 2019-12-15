# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
  
   first_index = win_combo[0]
   second_index = win_combo[1]
   third_index = win_combo[2]
  
   symbol_at_1 = board_array[first_index]
   symbol_at_2 = board_array[second_index]
   symbol_at_3 = board_array[third_index]
  
   if symbol_at_1 == symbol_at_2 && symbol_at_2 == symbol_at_3 && symbol_at_1 != ""
     return win_combo
   end
  end
  
  
  return false


end