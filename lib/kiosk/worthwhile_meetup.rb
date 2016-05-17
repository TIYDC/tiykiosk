class WorthwhileMeetup < Meetup
  def url
    "https://api.meetup.com/2/events?member_id=#{ENV['PRIMARY_MEETUP_MEMBER_ID']}&offset=0&format=json&limited_events=False&photo-host=public&page=20&fields=&order=time&desc=false&status=upcoming&sig_id=#{ENV['PRIMARY_MEETUP_MEMBER_SIG_ID']}&sig=#{ENV['PRIMARY_MEETUP_MEMBER_SIG']}"
  end
end
