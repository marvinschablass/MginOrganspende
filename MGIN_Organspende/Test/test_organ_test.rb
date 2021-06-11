# frozen_string_literal: true

require_relative "../organ_spende.rb"
require "minitest/autorun"


class TestOrganTest < Minitest::Test
  def setup
    @organspende = Organspende.new
  end
  def test_organspende
    assert_equal(true , @organspende.abfrage_patient_blutgruppe("A+"))
    #assert_equal true , true
  end
  def test_kompatibel
    assert_equal(true , @organspende.kompatibilitaet_blutgruppe("A+","A+"))
  end
  def test_organspende1
    assert_nil(@organspende.abfrage_patient_blutgruppe("Haus"))
  end
end