require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::Knight do
    it "should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @knight = ChessApi0ne::Pieces::Knight.new("b1")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@knight).to be_a(ChessApi0ne::Pieces::Knight)
            end
        end

        describe "#move" do
            it "should be able to move two squares in one direction and one in another" do
                expect(@knight.move("c3")).to be(true)
                expect(@knight.position).to eq("c3")
            end

            it "should not be able to move more than two squares in any direction" do
                expect(@knight.move("c4")).to be(false)
                expect(@knight.move("e2")).to be(false)
                expect(@knight.position).to eq("b1")
            end

            it "should not be able to move more than two squares backwards" do
                knight = ChessApi0ne::Pieces::Knight.new("g8", :black)

                expect(knight.move("h5")).to be(false)
                expect(knight.move("d7")).to be(false)
            end

            it "should be required to move at least one square in one direction" do
                expect(@knight.move("b3")).to be(false)
                expect(@knight.move("c3")).to be(true)
                expect(@knight.position).to eq("c3")
                
                expect(@knight.move("e3")).to be(false)
                expect(@knight.move("e4")).to be(true)
                expect(@knight.position).to eq("e4")
            end

            it "should be required to move at least two squares in one direction" do
                expect(@knight.move("c2")).to be(false)
                expect(@knight.position).to eq("b1")
            end
        end
    end
end