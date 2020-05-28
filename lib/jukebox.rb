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
#message printed on 'help' command
def help
    puts "I accept the following commands:"            
    puts "- help : displays this help message"              
    puts "- list : displays a list of songs you can play"   
    puts "- play : lets you choose a song to play"              
    puts "- exit : exits this program"
end
#message that lists the string array (songs)
def list(songs)
    songs.each_with_index{|song,i|
        puts "#{i+1}. #{song}"        
    }
end

#prompt user
#puts "playing #{songName}"
def play(songs)
    prompt_user_song
    input_raw = get_user_input
    input_int = input_raw.to_i
    input_is_int = (input_raw == input_int.to_s)

    if input_is_int
        if (input_int >= 1 && input_int <= songs.length)
            puts "Playing #{songs[input_int - 1]}"
        else
            invalid_input
        end
    else #input is string
        found = false
        songs.each{|song|
            if (song == input_raw)
                puts "Playing #{song}"
                found = true
            end
        }
        if !found
            invalid_input
        end#end if !found
    end#end if/else input_is_int
end#end play(string: songs)
#asks user for song
def prompt_user_song
    puts "Please enter a song name or number:"
end
#returns input string
def get_user_input
    inp = gets.strip
end
#prints invalid input message if user inputs something that is not
#a song name or a song number
def invalid_input
    puts "Invalid input, please try again"
end
