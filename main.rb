require './emailing.rb'
require './employee.rb'
require './manager1.rb'
require './intern.rb'



employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)


manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
# manager.give_all_raises

# employee1.print_info
# p employee1
# manager.fire_all_employees
# p employee1

intern1 = Intern.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
p intern1