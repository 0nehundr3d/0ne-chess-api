module ChessApi0ne::Pieces
    class King < ChessApi0ne::Piece
        def move(position)
            current_pos = @position.chars
            current_pos[1] = current_pos[1].to_i
            current_pos[0] = current_pos[0].ord

            move_pos = position.chars
            move_pos[1] = move_pos[1].to_i
            move_pos[0] = move_pos[0].ord

            return false if (current_pos[0] - move_pos[0]).abs > 1 ||  (current_pos[1] - move_pos[1]).abs > 1
            return false if (current_pos[0] != move_pos[0] && current_pos[1] != move_pos[1]) && ((move_pos[1] - current_pos[1]).abs != (move_pos[0] - current_pos[0]).abs)
            return false if @position == position

            @position = position
            true
        end
    end
end