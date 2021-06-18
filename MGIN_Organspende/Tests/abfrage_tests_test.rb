# frozen_string_literal: true

require_relative "../klasse_abfragen.rb"
require "minitest/autorun"



class AbfrageTestsTest < Minitest::Test
  def setup
    @klasseAbfrage = KlasseAbfragen.new
  end
  def test_organspende
    assert_equal(true , @klasseAbfrage.abfrage_patient_blutgruppe("A+"))
    #assert_equal true , true
  end
  def test_kompatibel1
    assert_equal(true , @klasseAbfrage.kompatibilitaet_blutgruppe("A+", "A+"))
  end

  def test_organspende1
    assert_nil(@klasseAbfrage.abfrage_patient_blutgruppe("Haus"))
  end
end
