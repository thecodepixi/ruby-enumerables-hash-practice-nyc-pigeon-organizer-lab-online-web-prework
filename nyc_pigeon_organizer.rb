require "pry" 

def nyc_pigeon_organizer(data)
  # write your code here!
  
  organized_pigeons = {}
  
  data.each do |attribute, values|
    values.each do |key, pigeons|
      pigeons.each do |pigeon|
        organized_pigeons[pigeon] = {color: [], gender: [], lives: []}
        binding.pry 
        organized_pigeons[pigeon][attribute].push(key)
      end
    end
  end
end 