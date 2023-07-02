require 'date'

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
    @last_day = Date.new(@year, @month, -1).day
  end

  def day(weekday, descriptor) # rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
    @weekday = weekday.downcase
    descriptor.downcase!

    case descriptor
    when "first"  then find_day(1..7)
    when "second" then find_day(8..14)
    when "third"  then find_day(15..21)
    when "fourth" then find_day(22..28)
    when "fifth"  then find_day(29..last_day)
    when "last"   then find_day(22..last_day)
    when "teenth" then find_day(13..19)
    end
  end

  private

  attr_reader :last_day

  def find_day(range)
    # Returns Date object in the range specified for the weekday
    range.to_a.reverse.each do |num|
      correct_day = Date.new(@year, @month, num)
      return correct_day if check_day?(@weekday, correct_day)
    end
    nil
  end

  def check_day?(weekday, day) # rubocop:disable Metrics/CyclomaticComplexity
    # Returns boolean for if day (Date object) is weekday day of the week
    case weekday
    when "monday"    then day.monday?
    when "tuesday"   then day.tuesday?
    when "wednesday" then day.wednesday?
    when "thursday"  then day.thursday?
    when "friday"    then day.friday?
    when "saturday"  then day.saturday?
    when "sunday"    then day.sunday?
    end
  end
end
