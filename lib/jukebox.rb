require'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  range = (1..songs.length).to_a.collect do |num|
    num.to_s
  end
  puts "Please enter a song name or number:"
  loop do
    input = gets.chomp
    if range.include?(input)
      puts "Playing #{songs[input.to_i - 1]}"
      break
    elsif songs.include?(input)
      puts "Playing #{input}"
      break
    else
      puts "Invalid input, please try again"
      break
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "play"
      play(songs)
    elsif command == "list"
      list(songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      puts "Please enter a valid command:"
    end
  end
end

