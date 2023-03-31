require "towers_of_hanoi"
require "rspec"

describe TowersOfHanoi do
    p_1 = [3, 2, 1]
    p_2 = []
    p_3 = []

    let(:toh) {TowersOfHanoi.new(3)}

    describe "#initialize" do
        context "Should accept an arg of n number of disks" do
            it "If n is given, set first pile to length n" do
                toh_1 = TowersOfHanoi.new(7)
                expect(toh_1.pile_1.length).to eq(7)
            end

            it "If n is not given, default the number of disks to 3" do
                toh_2 = TowersOfHanoi.new
                expect(toh_2.pile_1.length).to eq(3)
            end

        end
        it "Set up pile 1 with all disc in descending size" do
            expect(toh.pile_1).to eq(p_1)
        end

        it "The other two pile should be empty" do
            expect(toh.pile_2).to be_empty
            expect(toh.pile_2).to be_empty
        end
    end


    describe "#move" do
        it ""
    end

    describe "#won?" do
    end
end