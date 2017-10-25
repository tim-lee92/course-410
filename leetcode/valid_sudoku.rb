def is_valid_sudoku(board)
  seen_boxes = Array.new(9, false)

  vertical = []
  boxes = []

  9.times do
    vertical.push([])
    boxes.push([])
  end

  board.each_with_index do |row, h|
    seen_horizontal = Array.new(9, false)

    row.each_with_index do |char, i|
      if char != '.' && seen_horizontal[char.to_i - 1]
        return false
      end

      seen_horizontal[char.to_i - 1] = true if char != '.'

      vertical[i].push(char)

      if (h >= 0 && h <= 2)
        if (i >= 0 && i <= 2)
          boxes[0].push(char)
        elsif (i >= 3 && i <= 5)
          boxes[1].push(char)
        elsif (i >= 6 && i <= 8)
          boxes[2].push(char)
        end
      elsif (h >= 3 && h <= 5)
        if (i >= 0 && i <= 2)
          boxes[3].push(char)
        elsif (i >= 3 && i <= 5)
          boxes[4].push(char)
        elsif (i >= 6 && i <= 8)
          boxes[5].push(char)
        end
      else
        if (i >= 0 && i <= 2)
          boxes[6].push(char)
        elsif (i >= 3 && i <= 5)
          boxes[7].push(char)
        elsif (i >= 6 && i <= 8)
          boxes[8].push(char)
        end
      end
    end
  end


  vertical.each do |col|
    seen_vertical = Array.new(9, false)

    col.each_with_index do |char, i|
      if char != '.' && seen_vertical[char.to_i - 1]
        return false
      end

      seen_vertical[char.to_i - 1] = true if char != '.'
    end
  end

  boxes.each do |box|
    seen_box = Array.new(9, false)

    box.each_with_index do |char, i|
      if char != '.' && seen_box[char.to_i - 1]
        p 'box'
        return false
      end

      seen_box[char.to_i - 1] = true if char != '.'
    end
  end

  true
end

p is_valid_sudoku([
  [".","8","7","6","5","4","3","2","1"],
  ["2",".",".",".",".",".",".",".","."],
  ["3",".",".",".",".",".",".",".","."],
  ["4",".",".",".",".",".",".",".","."],
  ["5",".",".",".",".",".",".",".","."],
  ["6",".",".",".",".",".",".",".","."],
  ["7",".",".",".",".",".",".",".","."],
  ["8",".",".",".",".",".",".",".","."],
  ["9",".",".",".",".",".",".",".","."]
])
