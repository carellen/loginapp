class AgeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless (value + 16.years) < Date.today
      record.errors[attribute] << (options[:message] || "you are too young yet, bro")
    end
  end
end
