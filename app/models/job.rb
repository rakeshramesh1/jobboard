class Job < ActiveRecord::Base
  attr_accessible :JobDesc, :JobId, :Location, :Vacency, :exp_mon, :exp_year, :salary, :type
end
