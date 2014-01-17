class Sparkly
  def initialize(text)
    @text = text << sparkles
  end

  def to_s
    @text
  end

  private

  def sparkles
    " *.*:*.*"
  end
end
