require_relative 'wizard'

class Pipe < Wizard
  def initialize      # pipe starts out unlit, no puffing, no tobacco
    @lit = false
    @tobacco = 0
    @puff = false
  end

  def tobacco_left?
    @tobacco > 0
  end

  def fill            # @tobacco is int to allow consumption on action
    puts 'Your pipe is full.'
    @tobacco = 4
  end

  def light           # You must both fill and puff on to light!
    if tobacco_left? && @puff
      puts 'Your pipe is lit.'
      @lit = true
      @tobacco -= 1
    else
      if !tobacco_left?
        puts 'You need to .fill with tobacco.'
        elsif !@puff
        puts 'You must be .puffing first.'
      end
      @lit = false
    end
  end

  def puffing         # Pipes must be puffed to make them work
    @puff = true
    unless tobacco_left?
      puts 'You are puffing on an empty pipe!  .fill it!'
    end
  end

  def smokering
    if @lit && tobacco_left?
      puts 'Gandalf is jealous!'
      @tobacco -= 1
    else
      if !tobacco_left? && @lit
        puts 'You ran out of tobacco!'
      elsif !@lit
        puts 'Is your pipe even lit?'
      end
    end
  end
end
