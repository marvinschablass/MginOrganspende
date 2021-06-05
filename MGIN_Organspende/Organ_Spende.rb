# frozen_string_literal: true
puts "Bitte geben Sie den Vornamen des Patienten ein"

VornamePatient = gets.chomp

puts"Bitte geben Sie den Nachnamen des Patienten ein"

NachnamePatient = gets.chomp

puts"Bitte geben Sie das Alter des Patienten ein"

AlterPatient = gets.chomp

puts"Bitte geben Sie die Sozoialversicherungsnummer des Patienten ein"

SvnrPatient = gets.chomp

puts "Geben Sie bitte die Blutgruppe des Patienten wie folgt ein (A+, B+, A-, B-, AB-, AB+, 0-, 0+)"

BlutgruppePatient = gets.chomp

if BlutgruppePatient == "A+" or BlutgruppePatient == "A-" or BlutgruppePatient == "B+" or BlutgruppePatient == "B-" or BlutgruppePatient == "AB+" or BlutgruppePatient == "AB-" or BlutgruppePatient == "0+" or BlutgruppePatient == "0-"

  puts "Bitte geben Sie den Vornamen des Spenders ein"

  VornameSpender = gets.chomp

  puts"Bitte geben Sie den Nachnamen des Spenders ein"

  NachnameSpender = gets.chomp

  puts"Bitte geben Sie das Alter des Spenders ein"

  AlterSpender = gets.chomp

  puts"Bitte geben Sie die Sozoialversicherungsnummer des Spenders ein"

  SvnrSpender = gets.chomp

  puts "Geben Sie bitte die Blutgruppe des Spenders wie folgt ein (A+, B+, A-, B-, AB-, AB+, 0-, 0+)"


BlutgruppeSpender = gets.chomp
if BlutgruppePatient == "A+" or BlutgruppePatient == "A-" or BlutgruppePatient == "B+" or BlutgruppePatient == "B-" or BlutgruppePatient == "AB+" or BlutgruppePatient == "AB-" or BlutgruppePatient == "0+" or BlutgruppePatient == "0-"

if BlutgruppeSpender == BlutgruppePatient || BlutgruppePatient == "0+" || BlutgruppeSpender == "0+"
  puts"kompatibel"
  puts"Wollen Sie ein Datum für die Operation eintragen [ja/nein]"
  Antwort = gets.chomp

  if Antwort == "ja" or Antwort == "nein"

  if Antwort == "ja"
    puts "Tragen Sie bitte ein Datum ein"
    Datum = gets.chomp
    puts"Geschafft! Die Operation findet am #{Datum} statt."
    puts"Spender #{VornameSpender} #{NachnameSpender} / Alter #{AlterSpender} / Blutgruppe #{BlutgruppeSpender} / Sozialversicherungsnummer #{SvnrSpender}"
    puts"Patient #{VornamePatient} #{NachnamePatient} / Alter #{AlterPatient} / Blutgruppe #{BlutgruppePatient} / Sozialversicherungsnummer #{SvnrPatient}"
  else
    puts "Tragen Sie es bitte bald ein passendes Datum ein"
  end
  else
    puts "Keine gültige Antwort"
    end
else
  puts "Leider nicht kompatibel"
end
else
  puts "Keine gültige Blutgruppe"
end
else
  puts "Keine gültige Blutgruppe"
end