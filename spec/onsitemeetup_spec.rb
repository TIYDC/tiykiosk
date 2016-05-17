require 'spec_helper'
RSpec.describe OnsiteMeetup do
  it "will return a an list of meetups grouped by date" do
    expect(subject.this_week_by_day.values.first.first.time).to be_a DateTime
  end
end
