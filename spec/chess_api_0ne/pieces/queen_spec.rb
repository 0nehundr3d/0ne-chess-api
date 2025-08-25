require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::Queen do
    it "should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @queen = ChessApi0ne::Pieces::Queen.new("d1")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@queen).to be_a(ChessApi0ne::Pieces::Queen)
            end
        end
    end
end