module Aoc2024
  class ListSort
    def initialize(input_path)
      @input = File.readlines(input_path)
    end

    def lists
      hsh = { left: [], right: [] }
      @input.each do |line|
        ids = line.scan(/\d+/)
        left_id = ids.first.to_i
        right_id = ids.last.to_i
        hsh[:left] << left_id
        hsh[:right] << right_id
      end
      hsh
    end

    def sort_lists
      hsh = lists
      hsh[:left].sort!
      hsh[:right].sort!
      hsh
    end

    def diffs
      ary = []
      sorted_lists = sort_lists
      left = sorted_lists[:left]
      right = sorted_lists[:right]
      left.each_with_index { |n, i| ary << (n - right[i]).abs }
      ary
    end

    def similarity_array
      left = lists[:left]
      right = lists[:right]
      left.map { |n| n * right.count(n) }
    end
  end
end
