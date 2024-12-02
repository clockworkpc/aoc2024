module Aoc2024
  class RedNosedReports < Base
    def safe?(sequence, dampen)
      result = []
      sequence.each_with_index do |e, i|
        next if i.zero?

        result << (e - sequence[i - 1])
      end

      identical_changes = result.min == result.max
      return true if identical_changes && result.min.abs <= 3 && result.min.abs.positive?

      if dampen
        largest_change = result.max.abs > result.min.abs ? result.max : result.min
        index = result.index(largest_change)
        result.delete_at(index) if index
      end

      all_decreasing_gradually = result.min.negative? && result.max.negative? && result.min >= -3
      all_increasing_gradually = result.min.positive? && result.max.positive? && result.max <= 3
      all_decreasing_gradually || all_increasing_gradually
    end

    def reports(dampen: false)
      hsh = {}
      @input.each_with_index do |e, i|
        report_key = "report_#{i}".to_sym
        hsh[report_key] = {}
        sequence = e.scan(/\d+/).map(&:to_i)
        hsh[report_key][:sequence] = sequence
        hsh[report_key][:safe] = safe?(sequence, dampen)
      end
      require 'pry-byebug'; binding.pry if dampen
      hsh
    end

    def safe_reports
      reports.values.select { |h| h[:safe] == true }.count
    end
  end
end
