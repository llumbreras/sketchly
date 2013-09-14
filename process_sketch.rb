require 'ruby-processing'
class ProcessSketch < Processing::App

  def setup
    background(0, 0, 0)
  end

  def draw

  end

  def key_pressed
    warn "A key was pressed! #{key.inspect}"
    if @queue.nil?
      @queue = ""
    end
    if key != "\n"
      @queue = @queue + key
    else
      warn "Time to run the command: #{@queue}"
      @queue = ""
    end
  end

end

ProcessSketch.new(:width => 800, :height => 800, :title => 'ProcessSketch', :fill_screen => false)

