Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

# First we find all of the pictures to be moved.

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
    print '.' # This is our "progress bar".
    new_name = if pic_number < 10
      "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end

    if File.exist? new_name
      puts "File #{new_name} already exists."
      exit
    end

  File.rename name, new_name

  pic_number = pic_number + 1

end

puts

puts "Upload complete"
