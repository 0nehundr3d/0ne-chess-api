require "spec_helper"

RSpec.describe ChessApi0ne::Piece do
    describe "Instance methods" do
        before :each do
            @piece = ChessApi0ne::Piece.new
        end

        describe "#initialize" do
            it "should exist" do
                expect(@piece).to be_a(ChessApi0ne::Piece)
            end
        end
    end
end