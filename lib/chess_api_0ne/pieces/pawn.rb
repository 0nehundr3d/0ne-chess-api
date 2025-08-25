module ChessApi0ne::Pieces
    class Pawn < ChessApi0ne::Piece
        def move(position)
            current_pos = @position.chars
            current_pos[1] = current_pos[1].to_i
            current_pos[0] = current_pos[0].ord

            move_pos = position.chars
            move_pos[1] = move_pos[1].to_i
            move_pos[0] = move_pos[0].ord

            if @color == :white
                return false if !(move_pos[1] > current_pos[1])
                return false if (move_pos[1] - current_pos[1]) > 1 && !(current_pos[1] == 2)
            elsif @color == :black
                return false if !(move_pos[1] < current_pos[1])
                return false if -(move_pos[1] - current_pos[1]) > 1 && !(current_pos[1] == 7)
            end

            @position = position
            true
        end
    end
end