drivers = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/drivers.json'))
statuses = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/status.json'))
races = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/races.json'))
constructors = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/constructors.json'))
circuits = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/circuits.json'))
constructor_results = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/constructor_results.json'))
constructor_standings = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/constructor_standings.json'))
driver_standings = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/driver_standings.json'))
lap_times = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/lap_times.json'))
pit_stops = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/pit_stops.json'))
qualifying = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/qualifying.json'))
results = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/results.json'))
seasons = JSON.parse(File.read('/Users/daveyholler/Dropbox/Data Sets/F1/seasons.json'))

drivers_count = drivers.count
drivers.each.with_index(1) do |i, index|
  p "Creating Driver #{index} of #{drivers_count}"
  Driver.create!(i)
end

circuits_count = circuits.count
circuits.each.with_index(1) do |i, index|
  p "Creating Circuit #{index} of #{circuits_count}"
  Circuit.create!(i)
end

constructors_count = constructors.count
constructors.each.with_index(1) do |i, index|
  p "Creating Constructor #{index} of #{constructors_count}"
  Constructor.create!(i)
end

races_count = races.count
races.each.with_index(1) do |i, index|
  p "Creating Race #{index} of #{races_count}"
  Race.create!(i)
end

constructor_standings_count = constructor_standings.count
constructor_standings.each.with_index(1) do |i, index|
  p "Creating ConstructorStanding #{index} of #{constructor_standings_count}"
  ConstructorStanding.create!(i)
end

constructor_results_count = constructor_results.count
constructor_results.each.with_index(1) do |i, index|
  p "Creating ConstructorResult #{index} of #{constructor_results_count}"
  ConstructorResult.create!(i)
end

driver_standings_count = driver_standings.count
driver_standings.each.with_index(1) do |i, index|
  p "Creating DriverStanding #{index} of #{driver_standings_count}"
  DriverStanding.create!(i)
end

lap_times_count = lap_times.count
lap_times.each.with_index(1) do |i, index|
  p "Creating LapTime #{index} of #{lap_times_count}"
  LapTime.create!(i)
end

pit_stops_count = pit_stops.count
pit_stops.each.with_index(1) do |i, index|
  p "Creating PitStop #{index} of #{pit_stops_count}"
  PitStop.create!(i)
end

qualifying_count = qualifying.count
qualifying.each.with_index(1) do |i, index|
  p "Creating Qualifying #{index} of #{qualifying_count}"
  Qualifying.create!(i)
end

statuses_count = statuses.count
statuses.each.with_index(1) do |i, index|
  p "Creating Status #{index} of #{statuses_count}"
  Status.create!(i)
end

results_count = results.count
results.each.with_index(1) do |i, index|
  p "Creating Result #{index} of #{results_count}"
  Result.create!(i)
end

seasons_count = seasons.count
seasons.each.with_index(1) do |i, index|
  p "Creating Season #{index} of #{seasons_count}"
  Season.create!(i)
end


