module ChessApi0ne
    class Piece
        attr_reader :position, :color

        def initialize(position, color = :white)
            @position = position
            @color = color
        end

        def move(position)
            @position = position
            true
        end
    end
end