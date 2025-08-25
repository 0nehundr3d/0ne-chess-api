require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::King do
    it "should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @king = ChessApi0ne::Pieces::King.new("e1")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@king).to be_a(ChessApi0ne::Pieces::King)
            end
        end
    end
end