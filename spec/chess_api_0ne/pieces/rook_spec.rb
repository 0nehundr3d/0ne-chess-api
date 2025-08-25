require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::Rook do
    it "should be a piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @rook = ChessApi0ne::Pieces::Rook.new("a1")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@rook).to be_a(ChessApi0ne::Pieces::Rook)
            end
        end

        describe "#move" do
            it "shuold be able to move across ranks" do
                expect(@rook.move("a8")).to be(true)
                expect(@rook.position).to eq("a8")
            end
        end
    end
end