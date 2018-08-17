module Helpers
  def select_date(date, options = {})
    field = options[:from]
    select date.year.to_s, from: "#{field}_1i"
    find("select##{field}_2i").find("option[value='#{date.month}']").select_option
    select date.day.to_s, from: "#{field}_3i"
  end
end

RSpec.configure do |config|
  config.include Helpers, :type => :feature
end
