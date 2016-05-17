class Meetup
  def this_week_by_day
    meetups.select { |m| m.time >= Time.now.beginning_of_week(:sunday) && Time.now.end_of_week(:saturday) >= m.time }.group_by { |m| m.time.wday }
  end

  def meetups
    @meetups ||= fetch_meetups
  end

  def url
    raise "Please implment #url"
  end

  private

  def fetch_meetups
    parse_meetups open(url).read
  end

  def parse_meetups(json)
    JSON.parse(json, object_class: OpenStruct)["results"].map{|m| MeetupDecorator.new(m)}
  end
end
