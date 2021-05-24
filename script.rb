puts "Geben Sie bitte die Blutgruppe des Patienten wie folgt ein (A+, B+, A-, B-, AB-, AB+, 0-, 0+)"
BlutgruppePatient = gets.chomp
puts "Geben Sie bitte die Blutgruppe des Spenders wie folgt ein (A+, B+, A-, B-, AB-, AB+, 0-, 0+)"
BlutgruppeSpender = gets.chomp

if BlutgruppePatient and BlutgruppeSpender == 'A+' || BlutgruppePatient and BlutgruppeSpender == 'B+' || BlutgruppePatient and BlutgruppeSpender == 'A-' || BlutgruppePatient and BlutgruppeSpender == 'B-' || BlutgruppePatient and BlutgruppeSpender == 'Ab+' || BlutgruppePatient and BlutgruppeSpender == 'AB-' || BlutgruppePatient and BlutgruppeSpender == '0-' || BlutgruppePatient == '0-' || BlutgruppeSpender == '0-'
  puts"kompatibel"
  puts"Wollen Sie ein Datum für die Operation eintragen [ja/nein]"
  Antwort = gets.chomp
  if Antwort == "ja"
    puts "Tragen Sie bitte ein Datum ein"
    Datum = gets.chomp
    puts"Geschafft die Operation findet am #{Datum} statt."
    puts"Spenderblutgruppe: #{BlutgruppeSpender}"
    puts"Patientenblutgruppe: #{BlutgruppePatient}"
  else
    puts "Tragen Sie es bitte bald ein passendes Datum ein"
  end
else
  puts "Leider nicht kompatibel"
  end
