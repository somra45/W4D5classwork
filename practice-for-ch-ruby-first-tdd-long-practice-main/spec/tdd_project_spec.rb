require "tdd_project.rb"
require "rspec"

describe "tdd" do
    describe "#my_uniq" do 
        it "should remove duplicate elements from an array" do 
            expect([1, 2, 3, 5 ,6, 2, 4, 3].my_uniq).to match_array([1, 2, 3, 5, 6, 4])
        end

        it "should return the unique elements in order they appeared" do 
            expect([1, 2, 3, 5 ,6, 2, 4, 3].my_uniq).to eq([1, 2, 3, 5, 6, 4])
        end

        it "should not use ruby built in Array#uniq method" do 
            expect([1, 2, 3, 5 ,6, 2, 4, 3].my_uniq).to_not receive(:uniq)
        end
    end

    describe "#two_sum" do 
        it "should return all pairs of positions where the sum of elements is 0" do
            expect([-1, 0, 2, -2, 1].two_sum).to include([0,4], [2,3])
        end
        it "should return the pair sorted with the smaller index first and array should be sorted dictionary wise" do
            expect([-1, 0, 2, -2, 1].two_sum).to contain_exactly([0,4], [2,3])
        end
    end

    describe "#my_transpose" do
        rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8] 
        ]
        transposed = rows.transpose

        it "should return transposed matrix" do
            expect(rows.my_transpose).to match_array(transposed)
        end

        it "should not use the ruby built in Array#transpose method" do
            expect(rows.my_transpose).to_not receive(:transpose)
        end
    end

    describe "#stock_picker" do
        arr = [20, 10, 7, 15, 25, 22]

        it "return the most profitable pair of indices to first buy and then sell the stock" do
            expect(arr.stock_picker).to eq([2, 4])
        end

        it "should not sell stock before it's bought" do
            pair = arr.stock_picker
            expect(pair[1]).to be > pair[0] 
        end
    end
end