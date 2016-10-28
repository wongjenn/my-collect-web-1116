def my_collect(array)
  new_array = []
  i = 0
  while i < array.length
    result = yield(array[i])
    puts result
    new_array.push(result)
    i += 1
  end
  new_array
end

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']) do |student|
  student.split(" ").first
end


my_collect(['ruby', 'javascript', 'python', 'objective-c']) do |langauge|
  langauge.upcase
end
