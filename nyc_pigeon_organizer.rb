require "pry" 

def nyc_pigeon_organizer(data)
  # write your code here!
 # look inside the data and create a hash of all pigeons inside. 
 # look through data again and see if each pigeon is associated with a particular attribute
 # if they are, add that attribute to their nested hash description
 # if not, move to the next attribute 
 
 organized_pigeons = {}
 
 data.each do |attribute, values|
   values.each do |key, pigeons|
     pigeons.each do |pigeon|
       organized_pigeons[pigeon] = {color: [], gender: [], lives: []}
      end
    end
  end
  
  organized_pigeons.each do |pigeon| 
    data.each do |attribute, values|
      values.each do |pair|
        if pair[1].include?(pigeon[0])
          organized_pigeons[pigeon[0]][attribute] = "#{pair[0]}"
        end 
      end
    end
  end
  
  organized_pigeons
    
end 