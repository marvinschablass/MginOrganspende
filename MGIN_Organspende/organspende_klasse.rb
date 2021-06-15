# frozen_string_literal: true

require_relative "./organ_spende.rb"


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

  if  organspende.abfrage_spender_blutgruppe(blutgruppeSpender)


    if organspende.kompatibilitaet_blutgruppe(blutgruppePatient, blutgruppeSpender)

      puts"Wollen Sie ein Datum für die Operation eintragen [ja/nein]"
      Antwort = gets.chomp

      if Antwort == "ja" or Antwort == "nein"

        if Antwort == "ja"
          puts "Tragen Sie bitte ein Datum ein"
          Datum = gets.chomp
          puts"Geschafft! Die Operation findet am #{Datum} statt."
          puts"Daten der Operation:"
          puts"Spender: #{VornameSpender} #{NachnameSpender} / Alter: #{AlterSpender} / Blutgruppe: #{BlutgruppeSpender} / Sozialversicherungsnummer: #{SvnrSpender}"
          puts"Patient: #{VornamePatient} #{NachnamePatient} / Alter: #{AlterPatient} / Blutgruppe: #{BlutgruppePatient} / Sozialversicherungsnummer: #{SvnrPatient}"
        else
          puts "Tragen Sie es bitte bald ein passendes Datum ein"
        end
      else
        puts "Keine gültige Antwort"
      end
    end
  end
end
