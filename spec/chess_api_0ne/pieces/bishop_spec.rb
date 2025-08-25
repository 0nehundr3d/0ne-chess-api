require "spec_helper"

RSpec.describe ChessApi0ne::Pieces::Bishop do
    describe "Instance methods" do
        before :each do
            @bishop = ChessApi0ne::Pieces::Bishop.new("c1")
        end

        describe "#initialize" do
            it "should exist" do
                expect(@bishop).to be_a(ChessApi0ne::Pieces::Bishop)
            end
        end
    end
end