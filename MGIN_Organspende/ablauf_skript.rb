# frozen_string_literal: true

require_relative "./klasse_abfragen.rb"


organspende =Organspende.new
puts "Bitte geben Sie den Vornamen des Patienten ein."

VornamePatient = gets.chomp

puts"Bitte geben Sie den Nachnamen des Patienten ein."

NachnamePatient = gets.chomp
