require 'SensorAdapter'

class QueueController < ApplicationController
  def index
  end
  
  # sensor / measure / value
  def update
    puts "in update"
    puts params["sensor"]
    puts params["measure"]
    puts params["value"]
    puts "update complete"
    SensorAdapter.update_status(params["sensor"], params["measure"], params["value"])
  end
  
  def command
    puts "in command"
    puts params["type"]
    puts params["param1"]
    puts params["param2"]
    SensorAdapter.handle_command(params["type"],params["param1"],params["param2"])
  end
  
end
