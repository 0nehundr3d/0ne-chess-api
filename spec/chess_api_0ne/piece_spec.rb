require "spec_helper"

RSpec.describe ChessApi0ne::Piece do
    describe "Instance methods" do
        before :each do
            @piece = ChessApi0ne::Piece.new("e2")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@piece).to be_a(ChessApi0ne::Piece)
            end

            it "should have a position" do
                expect(@piece.position).to eq("e2")
            end

            it "should have a color" do
                expect(@piece.color).to eq(:white)
            end

            it "should be able to be black" do
                piece = ChessApi0ne::Piece.new("e7", :black)

                expect(piece.color).to eq(:black)
            end
        end

        describe "#move" do
            it "should be able to update its position" do
                @piece.move("e4")

                expect(@piece.position).to eq("e4")
            end
        end
    end
end