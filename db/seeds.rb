# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do |i|


  Area.create!(
    name: "エリア#{i}",
    country_id: 1
  )

  Tour.create!(
    title:    "ツアー#{i}",
    area_id: 1,
    recommend_one: "#{i}がおすすめです。",
    recommend_two: "#{i}がおすすめです。",
    recommend_three: "#{i}がおすすめです。",
    included:     "#{i}が必要です。",
    number_of_people: 1,
    meeting_place: "場所#{i}",
    price: 10000,
    time: 5,
    user_id: 1
  )

end

countries = ["フィリピン","タイ","シンガポール","台湾","ベトナム"]

5.times do |i|
  Country.create!(
    name: countries[i]
  )
end
