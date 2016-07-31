# yDir.chdir '/Users/naomi/Pictures'
pic_names = Dir['User:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = if pic_name < 10
    "{batch_name}0#{pic_number}.jpg"
  else
    "{batch_name}#{pic_number}.jpg"
    end

  File.rename name, new_name
  pic_number = pic_number + 1
  end

  save_name = new_name + (is_movie ? '.orig.avi' : '.jpg')
  while FileTest.exist? save_name
    new_name += 'a'
    save_name = new_name + (is_movie ? '.orig.avi' : '.jpg')
  end

end

puts
puts 'Finished'
our code here