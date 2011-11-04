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
    
  end

end
