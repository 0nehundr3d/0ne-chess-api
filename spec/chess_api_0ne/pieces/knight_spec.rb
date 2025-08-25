require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::Knight do
    it "should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @knight = ChessApi0ne::Pieces::Knight.new("a2")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@knight).to be_a(ChessApi0ne::Pieces::Knight)
            end
        end
    end
end