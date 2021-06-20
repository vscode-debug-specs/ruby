require_relative '../bubble_sort'

describe 'BubbleSort' do
    example 'be able to sort' do
        expect(BubbleSort.sort [4, 3, 2, 1]).to match_array [1, 2, 3, 4]
    end
end
