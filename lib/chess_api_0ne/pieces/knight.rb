module ChessApi0ne::Pieces
    class Knight < ChessApi0ne::Piece
        def move(position)
            current_pos = @position.chars
            current_pos[1] = current_pos[1].to_i
            current_pos[0] = current_pos[0].ord

            move_pos = position.chars
            move_pos[1] = move_pos[1].to_i
            move_pos[0] = move_pos[0].ord

            binding.pry if position == "c5"
            return false if (move_pos[1] - current_pos[1]).abs > 2
            return false if (move_pos[0] - current_pos[0]).abs > 2
            return false if (move_pos[0] - current_pos[0]).abs != 1 && (move_pos[1] - current_pos[1]).abs != 1
            return false if (move_pos[0] - current_pos[0]).abs != 2 && (move_pos[1] - current_pos[1]).abs != 2

            @position = position
            true
        end
    end
end