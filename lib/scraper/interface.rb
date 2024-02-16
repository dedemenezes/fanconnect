require_relative 'scraper'

players = []
scrape_players_url.each do |url|
  player = scrape_player(url)
  players << player
end

CSV.open("data/players.csv", 'wb') do |csv|
  csv << %i[full_name shirt_name age position shirt_number player_text birth_date birth_city height player_full_image_url]
  players.each do |p|
    csv << [
      p[:full_name],
      p[:shirt_name],
      p[:age],
      p[:position],
      p[:shirt_number],
      p[:player_text],
      p[:birth_date],
      p[:birth_city],
      p[:height],
      p[:player_full_image_url]
    ]
  end
end
