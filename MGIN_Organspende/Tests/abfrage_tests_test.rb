# frozen_string_literal: true
require "minitest/autorun"

class AbfrageTestsTest < Minitest::Unit::TestCase
  def setup
    @organspende = Organspende.new
  end
  def test_organspende1
    assert_equal(true , @organspende.abfrage_patient_blutgruppe("A+"))
    #assert_equal true , true
  end
  def test_kompatibel1
    assert_equal(true , @organspende.kompatibilitaet_blutgruppe("A+", "A+"))
  end


end