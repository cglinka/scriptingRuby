old_inventory = File.open('old-inventory.txt').readlines
new_inventory = File.open('new-inventory.txt').readlines

num_files_added   = (new_inventory - old_inventory).length
num_files_deleted = (old_inventory - new_inventory).length
num_files_unchanged = (new_inventory & old_inventory).length
# Other way to calculate the number of unchanged.
# old_inventory.length - num_files_deleted

puts "#{num_files_added} file(s) were added."
puts "The following files have been added:"
puts new_inventory - old_inventory

puts ""
puts "#{num_files_deleted} file(s) were deleted."
puts "The following files have been deleted:"
puts old_inventory - new_inventory

puts ""
puts "#{num_files_unchanged} file(s) were unchanged."
