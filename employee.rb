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

employee = Employee.new({first_name: "Sandra", last_name: "Bullock", salary: 8000, status: true})
p employee.first_name
