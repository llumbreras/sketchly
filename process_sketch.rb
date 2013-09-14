require 'ruby-processing'
class ProcessSketch < Processing::App

  def setup
    background(0, 0, 0)
  end

  def draw

  end

  def run_command(command)
    puts "Running Command To Change Background To: #{command}"

    bg_color = command.split(",")
    puts bg_color
    val1 = bg_color[0].to_i
    val2 = bg_color[1].to_i
    val3 = bg_color[2].to_i
    background val1,val2,val3
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
      run_command(@queue)
      @queue = ""
    end
  end

end

ProcessSketch.new(:width => 800, :height => 800, :title => 'ProcessSketch', :fill_screen => false)

