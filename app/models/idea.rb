class Idea < ActiveRecord::Base
  validates_presence_of :title
  
  enum quality: %w(swill plausible genius)

  def cap_quality
    quality.capitalize
  end

  def record_found(record)
    if record.nil?
      "Cannot be displayed"
    else
      record
    end
  end
end
