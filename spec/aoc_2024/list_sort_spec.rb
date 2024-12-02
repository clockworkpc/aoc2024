RSpec.describe Aoc2024::ListSort do
  context 'Sample Input' do
    let(:sorted_lists) { JSON.parse(File.read('spec/fixtures/samples/day_01_sorted.json'), symbolize_names: true) }
    let(:diffs) { [2, 1, 0, 1, 2, 5] }
    let(:similarity_array) { [9, 4, 0, 0, 9, 9] }

    before do
      input_path = 'spec/fixtures/samples/day_01.txt'
      @self = described_class.new(input_path)
    end

    it 'should sort ASC the lines' do
      expect(@self.sort_lists).to eq(sorted_lists)
    end

    it 'should sum the difference between the values' do
      expect(@self.diffs).to eq(diffs)
      expect(@self.diffs.sum).to eq(11)
    end

    it 'should return similarity array' do
      sa = @self.similarity_array
      expect(sa).to eq(similarity_array)
      expect(sa.sum).to eq(31)
    end
  end

  context 'Full Input' do
    before do
      input_path = 'spec/fixtures/inputs/day_01.txt'
      @self = described_class.new(input_path)
    end

    it 'should sum the difference between the values' do
      expect(@self.diffs.sum).to eq(1_530_215)
    end

    it 'should return similarity score' do
      sa = @self.similarity_array
      expect(sa.sum).to eq(26_800_609)
    end
  end
end
