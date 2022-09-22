require 'minitest/autorun'
require_relative '../word_synth'
require_relative '../effects'

class WordSynthTest < Minitest::Test
  def test_play
    assert WordSynth
    assert Effects
    
  end
end