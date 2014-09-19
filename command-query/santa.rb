class Santa
  def initialize
    @fits = true
    @cookies = 0
  end

  def fits?
    if @cookies > 2
      @fits = false
    end
    @fits
  end

  def eats_cookies
    @cookies += 1
  end
end
