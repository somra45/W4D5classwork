require "towers_of_hanoi"
require "rspec"

describe TowersOfHanoi do
    let(:toh) {TowersOfHanoi.new(3)}
    p_1 = [[3, 2, 1],[],[]]


    describe "#initialize" do
        context "Should accept an arg of n number of discs" do
            it "If n is given, set first pile to length n" do
                toh_1 = TowersOfHanoi.new(7)
                expect(toh_1.piles[0].length).to eq(7)
            end

            it "If n is not given, default the number of discs to 3" do
                toh_2 = TowersOfHanoi.new
                expect(toh_2.piles[0].length).to eq(3)
            end

        end
        it "Set up first pile with all discs in descending size" do
            expect(toh.piles[0]).to eq(p_1[0])
        end

        it "All other piles should be empty" do
            expect(toh.piles[1]).to be_empty
            expect(toh.piles[2]).to be_empty
        end
    end


    describe "#move" do
    toh_3 = TowersOfHanoi.new(5)
    toh_3.piles[0] = [5 , 4]
    toh_3.piles[1] = [2, 1]
    toh_3.piles[2] = [3]
        
        it "should raise an error if you try to move a bigger disc on top of a smaller disc" do 
            expect{toh_3.move(0, 1)}.to raise_error("move invalid: cannot move to a pile with a smaller disc on top")
        end

        it "moves the disc on top of one pile to another pile" do 
            toh.move(2, 0) 
            expect(toh_3.piles[0]).to eq([5, 4, 3])
            expect(toh_3.piles[2]).to be_empty
        end

        it "should not recieve a pile that doesn't exist" do
            expect(toh_3.move(3, 0)).to raise_error(ArgumentError)
            expect(toh_3.move(0, 3)).to raise_error(ArgumentError)
        end
    end

    describe "#won?" do
        it "" do

        end
    end
end
