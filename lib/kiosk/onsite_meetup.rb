class OnsiteMeetup < Meetup
  def url
    "https://api.meetup.com/2/events?&sign=true&photo-host=public&venue_id=#{ENV['PRIMARY_MEETUP_VENUE_ID']}&page=25"
  end
end
