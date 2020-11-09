require 'pry'

def nyc_pigeon_organizer(data)
  #Final hash to store results
  final_hash={}
  
  #Iterate through NDS to values in aray
  data.each {|key, value|
    value.each {|key2, value2|
      value2.each {|element|
        
        #Check final_hash to see if Value is already stored: if not add value as key to final_hash 
        if !final_hash[element] 
          final_hash[element]={}
        end
        #Check final_hash to see if attributes exist: if not add attributes as key pointing to array in final_hash
        if !final_hash[element][key]
          final_hash[element][key]=[]
        end
        #Add attributes to arrays
        final_hash[element][key].push(key2.to_s)
      }
    }
  }
  final_hash
end