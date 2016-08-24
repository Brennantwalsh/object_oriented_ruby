require 'faker'

  
class Employee
  
  attr_accessor :first_name, :last_name, :salary, :status

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @salary = hash[:salary]
    @status = hash[:status]
  end

  def print_info
    puts "#{first_name} #{last_name} makes $#{salary} and is employed #{status}"
  end

  def annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  def send_report
    puts "Sending Email..."

    puts "Email Sent"
  end
end

20.times do
  employee = Employee.new({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: Faker::Number.number(8), status: ["True", "False"].sample})
  puts employee.print_info
end

manager = Manager.new({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: Faker::Number.number(8), status: ["True", "False"].sample})
manager.print_info