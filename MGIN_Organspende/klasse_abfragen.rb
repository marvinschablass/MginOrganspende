# frozen_string_literal: true

class KlasseAbfragen

  def abfrage_patient_blutgruppe(blutgruppePatient)
    if blutgruppePatient == "A+" or blutgruppePatient == "A-" or blutgruppePatient == "B+" or blutgruppePatient == "B-" or blutgruppePatient == "AB+" or blutgruppePatient == "AB-" or blutgruppePatient == "0+" or blutgruppePatient == "0-"
      return true

    else
      puts"Keine gültige Blutgruppe"
    end
  end

  def abfrage_spender_blutgruppe(blutgruppeSpender)
    if blutgruppeSpender == "A+" or blutgruppeSpender == "A-" or blutgruppeSpender == "B+" or blutgruppeSpender == "B-" or blutgruppeSpender == "AB+" or blutgruppeSpender == "AB-" or blutgruppeSpender == "0+" or blutgruppeSpender == "0-"
      return true

    else
      puts "Keine gültige Blutgruppe"
    end
  end

  def kompatibilitaet_blutgruppe(blutgruppePatient, blutgruppeSpender)
    if blutgruppePatient == blutgruppeSpender or blutgruppePatient == "0+" or blutgruppeSpender =="0+"
      return true

    else
      puts "Leider nicht kompatibel"
    end
  end
end
