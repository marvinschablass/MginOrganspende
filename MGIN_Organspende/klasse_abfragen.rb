# frozen_string_literal: true

class KlasseAbfragen
  def abfrage_patient_blutgruppe(blutgruppePatient)
    if blutgruppePatient == "A+" or blutgruppePatient == "A-" or blutgruppePatient == "B+" or blutgruppePatient == "B-" or blutgruppePatient == "AB+" or blutgruppePatient == "AB-" or blutgruppePatient == "0+" or blutgruppePatient == "0-"
      return true

    else
      puts"Keine gültige Blutgruppe"
    end
  end
end
