module Aoc2024
  class RedNosedReports < Base
    def safe?(sequence)
      result = []
      sequence.each_with_index do |e, i|
        next if i.zero?

        result << (e - sequence[i - 1])
      end

      all_decreasing_gradually = result.min.negative? && result.max.negative? && result.min >= -3
      all_increasing_gradually = result.min.positive? && result.max.positive? && result.max <= 3
      all_decreasing_gradually || all_increasing_gradually
    end

    def reports
      hsh = {}
      @input.each_with_index do |e, i|
        report_key = "report_#{i}".to_sym
        hsh[report_key] = {}
        sequence = e.scan(/\d+/).map(&:to_i)
        hsh[report_key][:sequence] = sequence
        hsh[report_key][:safe] = safe?(sequence)
      end
      hsh
    end

    def safe_reports
      reports.values.select { |h| h[:safe] == true }.count
    end
  end
end
