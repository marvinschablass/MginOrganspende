# frozen_string_literal: true

def AbfragePatientBlutgruppe(blutgruppePatient)
  if BlutgruppePatient == "A+" or BlutgruppePatient == "A-" or BlutgruppePatient == "B+" or BlutgruppePatient == "B-" or BlutgruppePatient == "AB+" or BlutgruppePatient == "AB-" or BlutgruppePatient == "0+" or BlutgruppePatient == "0-"
    return true

  else
    puts"Keine gültige Blutgruppe"
  end
end

def AbfrageSpenderBlutgruppe(blutgruppeSpender)
  if BlutgruppeSpender == "A+" or BlutgruppeSpender == "A-" or BlutgruppeSpender == "B+" or BlutgruppeSpender == "B-" or BlutgruppeSpender == "AB+" or BlutgruppeSpender == "AB-" or BlutgruppeSpender == "0+" or BlutgruppeSpender == "0-"
    return true

  else
    puts "Keine gültige Blutgruppe"
  end
end

def Kompatibilität(blutgruppePatient,blutgruppeSpender)
  if BlutgruppePatient == BlutgruppeSpender or BlutgruppePatient == "0+" or BlutgruppeSpender =="0+"
    return "Kompatibel"

  else

    puts "Leider nicht kompatibel"
  end
end



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

if AbfragePatientBlutgruppe(BlutgruppePatient)


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

  if  AbfrageSpenderBlutgruppe(BlutgruppeSpender)


    if Kompatibilität(BlutgruppePatient,BlutgruppeSpender)

      puts"Wollen Sie ein Datum für die Operation eintragen [ja/nein]"
      Antwort = gets.chomp

      if Antwort == "ja" or Antwort == "nein"

        if Antwort == "ja"
          puts "Tragen Sie bitte ein Datum ein"
          Datum = gets.chomp
          puts"Geschafft! Die Operation findet am #{Datum} statt."
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
