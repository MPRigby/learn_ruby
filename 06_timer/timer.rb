class Timer
  attr_reader :seconds
  attr_reader :time_string

  def initialize
    @seconds = 0
    @time_string = '00:00:00'
  end

  def seconds=(new_seconds)
    hours = 0
    minutes = 0
    if new_seconds>59
      minutes = new_seconds/60
      new_seconds = new_seconds - (minutes*60)
    end
    if minutes>59
      hours = minutes/60
      minutes = minutes - hours*60
    end
    @time_string = "#{padded(hours)}:#{padded(minutes)}:#{padded(new_seconds)}"
  end

  def padded (number)
    if number<10
      "0"+number.to_s
    else
      number.to_s
    end
  end
end
