# frozen_string_literal: true

# Class representing a clock
class Clock
  def initialize(hour, minute, sec)
    @total_sec = hour * 3600 + minute * 60 + sec
  end

  def read_hours
    fill_zero(@total_sec / 3600 % 24)
  end

  def read_minutes
    fill_zero(@total_sec % 3600 / 60)
  end

  def read_seconds
    fill_zero(@total_sec % 60)
  end

  def print_string
    format('%<hours>s:%<minutes>s:%<seconds>s', hours: read_hours, minutes: read_minutes,
                                                seconds: read_seconds)
  end

  def fill_zero(number)
    #number = number.to_s
    #number = "0#{number}" if number.length < 2
    number
  end

  def increment
    @total_sec += 1
  end
end
