class WelcomeController < ApplicationController
  
  
  
  
  
  def index
    
    val = "accept_33"
   # @times = nil
    # evaluate condition to see if it fits the regex and then execute accordingly
    # $1 and $2 are values degenerated from the operation
    if val =~ /(accept)_(\d+)/
        @value = $1
        @admin_abstract_presentation_method_id = $2
      else
        @value = val
        @admin_abstract_presentation_method_id = nil
    end
    
   # times3 = gen_times(3)
   # times5 = gen_times(5)
    #@times = times.call(2)
    
  end
  
  
  
  def gen_times(factor)
    return Proc.new {|n| n*factor }
    
  end
end
