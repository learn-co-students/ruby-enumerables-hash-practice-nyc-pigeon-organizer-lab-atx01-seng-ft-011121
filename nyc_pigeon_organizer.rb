require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  result_data = data.each_with_object({}) do |(key, value), result_array|
    #binding.pry
    value.each do |inner_key, agg_names|
      #binding.pry 
      agg_names.each do |name|
        #binding.pry 
        if !result_array[name] 
          result_array[name] = {}
        end 
        if !result_array[name][key]
          !result_array[name][key] = []
        end 
        result_array[name][key].push(inner_key.to_s)
      end 
    end 
  end
  result_data
  #binding.pry
end


# pigeon_data = {
#         :color => {
#           :purple => ["Theo", "Peter Jr.", "Lucky"],
#           :grey => ["Theo", "Peter Jr.", "Ms. K"],
#           :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#           :brown => ["Queenie", "Alex"]
#         }... => provided data 
      
# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   }... => expected data 