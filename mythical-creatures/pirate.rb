class Pirate
  attr_reader :name, :job, :count, :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @count = 0
    @booty = 0
  end

  def cursed?
    count >= 3
  end

  def commit_heinous_act
    @count += 1
  end

  def rob_ship
    @booty += 100
  end
end
