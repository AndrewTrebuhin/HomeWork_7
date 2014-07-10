require_relative 'person'
require_relative 'speech'

names = { male:   %w(Andrew Bob John James Luke Leo Richie Martin Tom),
          female: %w(Angelina Penny Samanta Leia Sarah Jessica Britney Victoria Christina) }

fisrt_story  = File.read('the first story.txt')
second_story = File.read('the second story.txt')
third_story  = File.read('the third story.txt')
fourth_story = File.read('the fourth story.txt')

speech1 = Speech.new( topic: 'The first story', text: fisrt_story )
speech2 = Speech.new( topic: 'The second story', text: second_story )
speech3 = Speech.new( topic: 'The third story', text: third_story )
speech4 = Speech.new( topic: 'The fourth story', text: fourth_story )

actor1 = Man.new( name: names[:male][rand(8)], age: rand(12..20), speech: speech1 )
actor2 = Man.new( name: names[:male][rand(8)], age: rand(12..20), speech: speech2 )
actor3 = Woman.new( name: names[:female][rand(8)], age: rand(17..28), speech: speech3 )
actor4 = Woman.new( name: names[:female][rand(8)], age: rand(17..28), speech: speech4 )

judge1 = Man.new( name: 'Male judge1', age: 20, judge: true )
judge2 = Man.new( name: 'Male judge1', age: 19, judge: true )
judge3 = Woman.new( name: 'Female judge1', age: 18, judge: true )
judge4 = Woman.new( name: 'Female judge1', age: 22, judge: true )

puts '-------------------------------------------'
actor1.show
actor1.speech.show
puts '-------------------------------------------'
judge1.show
puts "Mark: #{judge1.rate_speech(actor1)}"