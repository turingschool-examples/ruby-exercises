class Wizard
  attr_reader :name

  def initialize(name, options = {})
    @name = name
    @bearded = options.fetch(:bearded, true)
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end
end
