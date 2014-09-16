class RollCall
  def initialize
    @roll = []
  end

  def longest_name
    if @roll.empty?
      nil
    else
      @roll.last.to_s
    end
  end

  def <<(name)
    @roll << name
    @roll.sort_by!(&:length)
  end
end
