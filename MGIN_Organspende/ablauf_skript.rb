# frozen_string_literal: true

require_relative "./klasse_abfragen.rb"


organspende =Organspende.new
puts "Bitte geben Sie den Vornamen des Patienten ein."

VornamePatient = gets.chomp

puts"Bitte geben Sie den Nachnamen des Patienten ein."

NachnamePatient = gets.chomp

puts"Bitte geben Sie das Alter des Patienten ein"

AlterPatient = gets.chomp

puts"Bitte geben Sie die Sozoialversicherungsnummer des Patienten ein"

SvnrPatient = gets.chomp

puts "Geben Sie bitte die Blutgruppe des Patienten wie folgt ein (A+, B+, A-, B-, AB-, AB+, 0-, 0+)"

blutgruppePatient = gets.chomp

if organspende.abfrage_patient_blutgruppe(blutgruppePatient)
  puts "Bitte geben Sie den Vornamen des Spenders ein"

  VornameSpender = gets.chomp

  puts"Bitte geben Sie den Nachnamen des Spenders ein"

  NachnameSpender = gets.chomp

  puts"Bitte geben Sie das Alter des Spenders ein"

  AlterSpender = gets.chomp

  puts"Bitte geben Sie die Sozoialversicherungsnummer des Spenders ein"

  SvnrSpender = gets.chomp

  puts "Geben Sie bitte die Blutgruppe des Spenders wie folgt ein (A+, B+, A-, B-, AB-, AB+, 0-, 0+)"

  blutgruppeSpender = gets.chomp
end
