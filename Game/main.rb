#!/usr/bin/env ruby

if File.exist?("gamedata.txt")
	puts "Game data found, not overwriting."

	contents = File.read('gamedata.txt')
	puts "Welcome back, " + contents + "!"
else
	puts "What is your name? "
	name = gets.chomp
	File.open('gamedata.txt', 'a') { |f| f.write(name) }
	puts "Welcome " + name + "."
end
