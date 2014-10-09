def count(start:,stop:)
  counting = "#{start}"
  until start == stop
    if start < stop
      start += 1
    else
      start -= 1
    end
    counting += ",#{start}"
  end
  return counting
end