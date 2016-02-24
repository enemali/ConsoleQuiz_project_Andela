 require 'json'
file = File.read('qsn.json')
question = JSON.parse(file)
subject = {}
subject = question.values[1]
#puts question.keys[0]
puts subject.keys[0]
puts subject.values[0]
puts subject.keys[1]+" "+subject.values[1]
puts subject.keys[2]+" "+subject.values[2]
puts subject.keys[3]+" "+subject.values[3]
puts subject.keys[4]+" "+subject.values[4]




#puts data_hash[data_hash.keys[0]]



#puts data_hash['posts']



#puts data_hash.keys[1]+" - "+data_hash[data_hash.keys[1]]
#puts data_hash.keys[2]+" - "+data_hash[data_hash.keys[2]]
#puts data_hash.keys[3]+" - "+data_hash[data_hash.keys[3]]
#puts data_hash.keys[4]+" - "+data_hash[data_hash.keys[4]]
#puts data_hash.keys[5]+" - "+data_hash[data_hash.keys[5]]



#puts data_hash['posts'].keys
#puts data_hash['posts'].first[0]
#puts data_hash['posts'].first[1]
