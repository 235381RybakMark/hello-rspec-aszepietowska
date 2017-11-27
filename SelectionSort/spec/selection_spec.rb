require_relative '../lib/selection.rb'

describe '#selection_sort' do
	context 'tests on arrays' do
		it "returns an empty array" do
			expect(SelectionSort([])).to eq []
		end

		it "returns larges on end of array" do
			expect(SelectionSort([80,15,30,20,33,11])).to end_with 80
	  	end
	end

	context 'int arrays' do
		it "returns sorted mixed positive int array" do
			an_array=[9, 6, 15, 1, 12, 49]
			expect(SelectionSort(an_array)).to eq([1, 6, 9, 12, 15, 49])
		end

		it "returns sorted pessimistic positive int array" do
			an_array=[55,43,41,28,25,15,10,5]
			expect(SelectionSort(an_array)).to eq([5,10,15,25,28,41,43,55])
		end

		it "returns sorted mixed negative int array" do
			an_array=[-43,-7,-8,-96,-5,-1]
			expect(SelectionSort(an_array)).to eq([-96,-43,-8,-7,-5,-1])
		end

		it "returns sorted pessimistic negative int array" do
			an_array=[-4,-12,-15,-50,-55,-75]
			expect(SelectionSort(an_array)).to eq([-75,-55,-50,-15,-12,-4])
		end

		it "returns sorted mixed pos/neg int array" do
			an_array=[-50,7,-9,12,-5,8]
			expect(SelectionSort(an_array)).to eq([-50,-9,-5,7,8,12])
		end

	end

	context 'decimal arrays' do
		it "returns sorted mixed decimal array" do
			an_array=[4.5,9.4,3.5,2.2,7.7,5.3]
			expect(SelectionSort(an_array)).to eq([2.2,3.5,4.5,5.3,7.7,9.4])
		end

		it "returns sorted pessimistic decimal array" do
			an_array=[200.41,198.55,125.6,88.66,7.3,3.7,1.2]
			expect(SelectionSort(an_array)).to eq([1.2,3.7,7.3,88.66,125.6,198.55,200.41])
		end

		it "returns sorted mixed pos/neg decimal array" do
			an_array=[-7.5,5.9,7.2,-91.71,-91.72,35.1]
			expect(SelectionSort(an_array)).to eq([-91.72,-91.71,-7.5,5.9,7.2,35.1])
		end
	end

	context 'int/decimal arrays' do
		it "returns sorted mixed int/decimal positive array" do
			an_array=[5.5,6,7.5,9.2,3,7,10.5,10,10.1]
			expect(SelectionSort(an_array)).to eq([3,5.5,6,7,7.5,9.2,10,10.1,10.5])
		end

		it "returns sorted int/decimal pessimistic positive array" do
			an_array=[101,95.0,66.5,55,41.8,41.7,41,5]
			expect(SelectionSort(an_array)).to eq([5,41,41.7,41.8,55,66.5,95.0,101])
		end

		it "returns sorted int/dec mixed pos/neg" do
			an_array=[105,-105.5,-105.4,-6,5,78,60,15.5,3]
			expect(SelectionSort(an_array)).to eq([-105.5,-105.4,-6,3,5,15.5,60,78,105])
		end
	end
end
