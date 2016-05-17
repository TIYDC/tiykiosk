class MeetupDecorator < SimpleDelegator
  def time
    t = Time.at(time_in_seconds)
    Time.mktime(t.sec, t.min, t.hour, t.mday, t.mon, t.year, nil, nil, t.dst?, utc_offset).to_datetime
  end

  def utc_offset
    __getobj__.utc_offset.to_i / 1000
  end

  def time_in_seconds
    __getobj__.time.to_i / 1000
  end
end
