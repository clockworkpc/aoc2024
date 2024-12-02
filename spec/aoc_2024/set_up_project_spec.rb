RSpec.describe Aoc2024::SetUpProject do
  context 'aoc_2024' do
    let(:project_details) { JSON.parse(File.read('bin/project_details.json')) }

    it 'should match the project Module name' do
      self_module = self.class.to_s.split('::').last
      expect(self_module).to eq(project_details['current']['module'])
    end

    it 'should match the project Spec name' do
      self_spec = self.class.description
      expect(self_spec).to eq(project_details['current']['spec'])
    end

    it 'should hello world' do
      expect(described_class.new.hello_world).to eq('hello world') 
      
    end
  end
end
