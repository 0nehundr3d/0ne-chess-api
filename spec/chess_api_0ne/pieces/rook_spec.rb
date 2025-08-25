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
            it "should be able to move across ranks" do
                expect(@rook.move("a8")).to be(true)
                expect(@rook.position).to eq("a8")
            end

            it "should be able to move across files" do
                expect(@rook.move("h1")).to eq(true)
                expect(@rook.position).to eq("h1")
            end

            it "should not be able to move across both ranks and files" do
                expect(@rook.move("b2")).to eq(false)
                expect(@rook.position).to eq("a1")
            end

            it "should not be able to move on top of itself" do
                expect(@rook.move("a1")).to eq(false)
                expect(@rook.position).to eq("a1")
            end
        end
    end
end