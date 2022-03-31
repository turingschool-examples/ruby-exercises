class TrickOrTreater
  attr_reader :costume

  def initialize(costume)
    @costume = costume
  end

  def dressed_up_as
    @costume.style
  end
end
