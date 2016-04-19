#!/usr/bin/env ruby

# file: rpi_pinin_msgout-test.rb

require 'io/console'
require 'rpi_pinin_msgout'
require 'chronic_duration'



class RPiPinInMsgOutTest < RPiPinInMsgOut

  # duration: Used by sample mode
  
  def initialize(id, pull: nil, mode: :default, verbose: true, 
                 subtopic: 'sensor', device_id: 'pi', notifier: Echo.new, 
                 duration: '5 seconds', index: 0, capture_rate: 0.5, 
                 descriptor: 'detected')
            
    @mode, @verbose, @notifier, @duration = mode, verbose, notifier, duration
    @capture_rate, @descriptor = capture_rate, descriptor
    @topic = [device_id, subtopic, index].join('/')
    
  end  
  
  private
    
  def setup()
    
    t0 = Time.now + 1        
    
    #self.watch_high do 
    while (c = $stdin.getch ) == ' ' do

      # ignore any movements that happened a short time ago e.g. 250 
      #               milliseconds ago since the last movement
      if t0 + @capture_rate < Time.now then     
        
        puts  Time.now.to_s if @verbose
        
        yield() 
        
        t0 = Time.now
        
      else
        #puts 'ignoring ...'
      end   
      
    end # /watch_high
    
  end    
    
end
