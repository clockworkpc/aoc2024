RSpec.describe Aoc2024::RedNosedReports do
  context 'Sample Input' do
    let(:reports) { JSON.parse(File.read('spec/fixtures/samples/day_02_analyzed.json'), symbolize_names: true) }

    before do
      input_path = 'spec/fixtures/samples/day_02.txt'
      @self = described_class.new(input_path)
    end

    it 'should return evaluated reports' do
      expect(@self.reports).to eq(reports) 
    end

    it 'should return the number of safe reports' do
      expect(@self.safe_reports).to eq(2)
    end
  end

  context 'Full Input' do
    before do
      input_path = 'spec/fixtures/inputs/day_02.txt'
      @self = described_class.new(input_path)
    end

    it 'should return the number of safe reports' do
      expect(@self.safe_reports).to eq(2)
    end
  end
end
