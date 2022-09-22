#require effects.rb


class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    # words = original_words
    # @effects.each do |effect|
    #   words = effect.call(words)
    # end
    # p words
  end

end




# エフェクトなし
synth = WordSynth.new
synth.play('Ruby is fun!')

# リバースエフェクト
# synth = WordSynth.new
# synth.add_effect(Effects.reverse)
# synth.play('Ruby is fun!')

# 全エフェクトを一度に適応
# synth = WordSynth.new
# synth.add_effect(Effects.echo(2))
# synth.add_effect(Effects.loud(3))
# synth.add_effect(Effects.reverse)
# synth.play('Ruby is fun!')

