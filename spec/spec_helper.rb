require 'json'
require 'aoc_2024/base'
require 'aoc_2024/set_up_project'
require 'aoc_2024/list_sort'
require 'aoc_2024/red_nosed_reports'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
