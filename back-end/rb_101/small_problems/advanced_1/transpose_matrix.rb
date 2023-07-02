matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  transposed = [[], [], []]
  index = 0

  loop do
    matrix.each do |sub_arr|
      transposed[index] << sub_arr[index]
    end
    index += 1
    break if transposed[2].size == 3
  end

  transposed
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]