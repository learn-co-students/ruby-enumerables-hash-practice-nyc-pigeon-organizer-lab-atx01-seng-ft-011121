def nyc_pigeon_organizer(data)
  # write your code here!
  
  require "pry"

    
    pigeon_list_final = data.each_with_object({}) do |(attribute_type,attribute_hash),pigeon_list|
      #binding.pry
      attribute_hash.each do |attribute,names_array|
        #binding.pry
        names_array.each do |name|
          #binding.pry
          if !pigeon_list[name]
            pigeon_list[name] ={}
          end
          if !pigeon_list[name][attribute_type]
            pigeon_list[name][attribute_type]=[]
          end
          if !pigeon_list[name][attribute_type].include?(attribute.to_s)
            pigeon_list[name][attribute_type] << attribute.to_s
          end
          #binding.pry
        end
      end
    end
pigeon_list_final
end
