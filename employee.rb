module Actualize
  class Employee
    attr_reader :first_name, :last_name
    attr_writer :active 
    @@id = 0

    def initialize(input_options)
      @@id += 1
      @id = @@id
      @first_name = input_options[:first_name]
      @last_name = input_options[:last_name]
      @salary = input_options[:salary]
      @active = input_options[:active]
    end

    def print_info
      puts "#{@first_name} #{@last_name} makes #{@amount_per_year} a year."
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end

    private

    def amount_per_year
      "#{salary} a year"
    end
  end
end