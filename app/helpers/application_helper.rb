module ApplicationHelper
  def to_min_sec duration
    Time.at(duration).utc.strftime("%_M:%S")
  end
end
