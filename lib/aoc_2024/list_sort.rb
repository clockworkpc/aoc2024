module Aoc2024
  class ListSort
    def initialize(input_path)
      @input = File.readlines(input_path)
    end

    def sort_lists
      hsh = { left: [], right: []}
      @input.each do |line|
        ids = line.scan(/\d+/)
        left_id = ids.first.to_i
        right_id = ids.last.to_i
        hsh[:left] << left_id
        hsh[:right] << right_id
      end
      hsh[:left].sort!
      hsh[:right].sort!
      hsh
    end

    def diffs
      ary = []
      sorted_lists = sort_lists
      left = sorted_lists[:left]
      right = sorted_lists[:right]
      left.each_with_index {|n, i| ary << (n - right[i]).abs }
      ary
    end
  end
end
