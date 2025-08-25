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

        describe "#move" do
            it "should be able to move one square along ranks" do
                expect(@king.move("e2")).to be(true)
                expect(@king.position).to eq("e2")
            end

            it "should be able to move one square along files" do
                expect(@king.move("d1")).to be(true)
                expect(@king.position).to eq("d1")
            end

            it "should be able to move one square along diagonals" do
                expect(@king.move("f2")).to be(true)
                expect(@king.position).to eq("f2")

                expect(@king.move("e3")).to be(true)
                expect(@king.position).to eq("e3")
            end

            it "should not be able to make illegal moves" do
                expect(@king.move("d3")).to be(false)
                expect(@king.position).to eq("e1")

                expect(@king.move("c5")).to be(false)
                expect(@king.position).to eq("e1")
            end

            it "should only be able to move one square in any direction" do
                expect(@king.move("e3")).to be(false)
                expect(@king.move("g1")).to be(false)
                expect(@king.move("c3")).to be(false)
                expect(@king.position).to eq("e1")
            end

            it "should not be able to move on top of itself" do
                expect(@king.move("e1")).to be(false)
                expect(@king.position).to eq("e1")
            end
        end
    end
end