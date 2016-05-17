class WorthwhileMeetup < Meetup
  def url
    "https://api.meetup.com/2/events?member_id=#{ENV['PRIMARY_MEETUP_MEMBER_ID']}&offset=0&format=json&limited_events=False&photo-host=public&page=20&fields=&order=time&desc=false&status=upcoming&sign=true&key=#{ENV['PRIMARY_MEETUP_API_KEY']}"
  end
end
