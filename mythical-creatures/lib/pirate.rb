class Pirate
  attr_reader :name, :job, :heinous_act, :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_act = 0
    @booty = 0
  end

  def job
    @job
  end

  def cursed?
    if @heinous_act >= 3
      @cursed = true
    end
  end

  def commit_heinous_act
    @heinous_act += 1
  end

  def has_booty
    @booty
  end

  def rob
    @booty += 100
  end
end
