RSpec.describe ChessApi0ne::Pieces::Pawn do
    it "Should be a Piece" do
        expect(described_class).to be < ChessApi0ne::Piece
    end

    describe "Instance methods" do
        before :each do
            @pawn = ChessApi0ne::Pieces::Pawn.new("e2")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@pawn).to be_a(ChessApi0ne::Pieces::Pawn)
            end
        end

        describe "#move" do
            describe "white" do 
                it "should be able to move one square forward" do
                    expect(@pawn.move("e3")).to be(true)
                    expect(@pawn.position).to eq("e3")
                end
    
                it "should be able to move two squares forward on its first move" do
                    expect(@pawn.move("e4")).to be(true)
                end
    
                it "should be able to capture along diagonals" do
                    expect(@pawn.move("f3")).to be(true)
                    expect(@pawn.move("e4")).to be(true)
                end
    
                it "should only be able to move forwards" do
                    expect(@pawn.move("f2")).to be(false)
                    expect(@pawn.move("e1")).to be(false)
                    expect(@pawn.move("d1")).to be(false)
                    expect(@pawn.position).to eq("e2")
                end
    
                it "should only be able to move one square after its first move" do
                    expect(@pawn.move("e3")).to be(true)
                    expect(@pawn.move("e5")).to be(false)
                end
            end

            describe "black" do
                before :each do
                    @pawn = ChessApi0ne::Pieces::Pawn.new("e7", :black) 
                end

                it "should be able to move one square forward" do
                    expect(@pawn.move("e6")).to be(true)
                    expect(@pawn.position).to eq("e6")
                end
    
                it "should be able to move two squares forward on its first move" do
                    expect(@pawn.move("e5")).to be(true)
                end
    
                it "should be able to capture along diagonals" do
                    expect(@pawn.move("f6")).to be(true)
                    expect(@pawn.move("e5")).to be(true)
                end
    
                it "should only be able to move forwards" do
                    expect(@pawn.move("f7")).to be(false)
                    expect(@pawn.move("e8")).to be(false)
                    expect(@pawn.move("d8")).to be(false)
                    expect(@pawn.position).to eq("e7")
                end
    
                it "should only be able to move one square after its first move" do
                    expect(@pawn.move("e6")).to be(true)
                    expect(@pawn.move("e4")).to be(false)
                end
            end

            it "should not be able to move on top of itself" do
                expect(@pawn.move("e2")).to be(false)
            end
        end
    end
end