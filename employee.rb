require 'faker'

  
class Employee
  
  attr_reader :first_name, :last_name, :salary, :status

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @salary = hash[:salary]
    @status = hash[:status]
  end

  def annual_raise
    @salary *= 1.05
  end
end
100.times do
  employee = Employee.new({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: 8000, status: true})
  p employee
 
end

