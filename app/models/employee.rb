class Employee < ActiveRecord::Base
  attr_accessible :EmpId, :Industry, :Mobile, :Phone, :Qualification, :address, :dob, :exp_mon, :exp_year, :function, :location
end
