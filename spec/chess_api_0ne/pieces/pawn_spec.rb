RSpec.describe ChessApi0ne::Pieces::Pawn do
    it "Should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @pawn = ChessApi0ne::Pieces::Pawn.new("e2")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@pawn).to be_a(ChessApi0ne::Pieces::Pawn)
            end
        end
    end
end