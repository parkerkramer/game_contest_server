# code credit from
# http://stackoverflow.com/questions/6729786/how-to-select-date-from-a-select-box-using-capybara-in-rails-3
#
def date_base_id(field)
  find(:xpath, ".//label[contains(., '#{field}')]")[:for]
end

def select_date(date, field)
  base_id = date_base_id(field)

  select date.year.to_s, from: "#{base_id}_1i"
  select Date::MONTHNAMES[date.month], from: "#{base_id}_2i"
  select date.day.to_s, from: "#{base_id}_3i"
end

def select_datetime(datetime, field)
  base_id = date_base_id(field)

  select_date(datetime, field)
  select datetime.hour.to_s.rjust(2, '0'), from: "#{base_id}_4i"
  select datetime.min.to_s.rjust(2, '0'), from: "#{base_id}_5i"
end

# begin JGG code
def expect_date_select(date, field)
  base_id = date_base_id(field)

  should have_select "#{base_id}_1i", selected: date.year.to_s
  should have_select "#{base_id}_2i", selected: Date::MONTHNAMES[date.month]
  should have_select "#{base_id}_3i", selected: date.day.to_s
end

def expect_datetime_select(datetime, field)
  base_id = date_base_id(field)

  expect_date_select(datetime, field)
  should have_select "#{base_id}_4i", selected: datetime.hour.to_s.rjust(2, '0')
  should have_select "#{base_id}_5i", selected: datetime.min.to_s.rjust(2, '0')
end
