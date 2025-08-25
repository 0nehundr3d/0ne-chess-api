require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::Bishop do
    it "should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @bishop = ChessApi0ne::Pieces::Bishop.new("c1")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@bishop).to be_a(ChessApi0ne::Pieces::Bishop)
            end
        end

        describe "#move" do
            it "should be required to move the same number of squares verticalls and horizonatally" do
                expect(@bishop.move("c2")).to be(false)
                expect(@bishop.move("d1")).to be(false)
                expect(@bishop.move("d2")).to be(true)
                expect(@bishop.position).to eq("d2")
            end

            it "should be able to validate for mult square moves" do
                bishop = ChessApi0ne::Pieces::Bishop.new("f8", :black)

                expect(bishop.move("d5")).to be(false)
                expect(bishop.move("b6")).to be(false)
                expect(bishop.move("c5")).to be(true)
                expect(bishop.position).to eq("c5")
            end

            it "should not be able to move on top of itself" do
                expect(@bishop.move("c1")).to be(false)
            end
        end
    end
end