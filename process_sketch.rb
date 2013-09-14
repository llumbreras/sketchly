require 'ruby-processing'
class ProcessSketch < Processing::App

  def setup
    background(0, 0, 0)
  end

  def draw

  end

end

ProcessSketch.new(:width => 800, :height => 800, :title => 'ProcessSketch', :fill_screen => false)

