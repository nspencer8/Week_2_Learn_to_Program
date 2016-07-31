jhene_music = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  jhene_music.each do |mp3|
    f.write mp3+"\n"
    end
end
puts 'Finished Shuffle!'