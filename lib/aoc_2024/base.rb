module Aoc2024
  class Base
    attr_reader :input

    def initialize(input_path)
      @input = File.readlines(input_path)
    end
  end
end
