require './lib/Parcel'

def main_menu
  loop do
    puts "\n"
    puts "Hello! Press enter to tell us about your parcel"
    puts "or press 'x' to exit!"
    main_choice = gets.chomp
    if main_choice == 'x'
      exit
    else
      make_parcel
      puts "Shipping your parcel will cost:"
      puts "$ #{@p.cost_to_ship}"
      puts "\n"
    end
  end
end

def make_parcel
  puts "What is the length of your parcel?"
  input_length = gets.chomp
  puts "What is the height of your parcel?"
  input_height = gets.chomp
  puts "What is the width of your parcel?"
  input_width = gets.chomp
  puts "What is the weight of your parcel?"
  input_weight = gets.chomp
  @p = Parcel.new(input_length, input_height, input_width, input_weight)
end
 main_menu
