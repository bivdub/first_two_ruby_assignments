#RUBY!! no more semi-colons... ever.
#Gross...

require 'json'
file = File.read("./products.json")

#Welcome to RUBY we use snake case now
#snake case word_word not camel case wordWord
google_data = JSON.parse(file)
data = google_data["items"]

#outputs the full object
#puts google_data.inspect

#outputs the first item's title
# puts google_data["items"][0]["product"]["title"]

def print_titles(passed_data)
	passed_data.each { |item| puts item["product"]["title"] }
end

def print_info(json_data)
	json_data.each { |item| 
		puts item["product"]["title"]
		puts item["product"]["inventories"][0]["price"]
		puts item["product"]["images"][0] unless item["product"]["images"].count < 1 
	}
end

# print_info(data)

#finds the number of items in the array with kind shopping#product
# puts data.count{ |item| item["kind"] == "shopping#product"}

#find all items with backorder availability
# backorder =  data.select { |item| item["product"]["inventories"][0]["availability"] == "backorder" }
# puts "\nBackordered: "
# print_titles(backorder)

# #find all items with more than one image
# multi_image  = data.select { |item| item["product"]["images"].count > 1}
# puts "\nItems with multiple images:"
# print_titles(multi_image)

# #find all with brand Canon
canon = data.select { |item| item["product"]["brand"].downcase == "canon"}
puts "\nCanon Items: "
print_info(canon)

# #find all with brand Canon and seller eBay
canon_ebay = canon.select { |item| item["product"]["author"]["name"].downcase.include? "ebay" }
puts "\nCanon items on ebay:"
print_titles(canon_ebay)