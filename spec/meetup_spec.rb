require "spec_helper"
RSpec.describe Meetup do
  subject { Meetup.new(OpenStruct.new(time: "1473372000000")) }
  it "will return a an list of meetups grouped by date" do
    expect(subject.time).to eq Time.new(2016, 9, 8, 18, 00, 0.000000000, "-04:00")
  end
end
