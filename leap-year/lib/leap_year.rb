def is_leap_year?(year)
  if year % 100 == 0 && year % 400 == 0
    return true
  end

  if year % 4 == 0 && year % 100 != 0
    true
  else
    false
  end
end
