module ChessApi0ne::Pieces
    class Bishop < ChessApi0ne::Piece
        def move(position)
            current_pos = @position.chars
            current_pos[0] = current_pos[0].ord
            current_pos[1] = current_pos[1].to_i

            move_pos = position.chars
            move_pos[0] = move_pos[0].ord
            move_pos[1] = move_pos[1].to_i

            return false if (move_pos[1] - current_pos[1]).abs != (move_pos[0] - current_pos[0]).abs

            @position = position
            true
        end
    end
end