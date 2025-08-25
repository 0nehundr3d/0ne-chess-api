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

        describe "#move" do
            it "should be able to move freely along ranks" do
                expect(@queen.move("d8")).to be(true)
                expect(@queen.position).to eq("d8")
            end

            it "should be able to move freely along files" do
                expect(@queen.move("a1")).to be(true)
                expect(@queen.position).to eq("a1")
            end

            it "should be able to move freely along diagonals" do
                expect(@queen.move("f3")).to be(true)
                expect(@queen.position).to eq("f3")

                expect(@queen.move("d5")).to be(true)
                expect(@queen.position).to eq("d5")
            end

            it "should not be able to make illegal moves" do
                expect(@queen.move("e3")).to be(false)
                expect(@queen.position).to eq("d1")

                expect(@queen.move("c5")).to be(false)
                expect(@queen.position).to eq("d1")
            end

            it "should not be able to move on top of itself" do
                expect(@queen.move("d1")).to be(false)
                expect(@queen.position).to eq("d1")
            end
        end
    end
end