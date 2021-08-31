require_relative "employee.rb"

class Manager < Employee

  attr_accessor :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []

  end

  def add_employee(emp)
    employees << emp
  end


  # managers should get a bonus based on total salary of their subordinates
  # need to check if manager's subordinates' subordinates are also managers
  # subordinates' subordinates' subordinates, etc.

  def bonus
    # logic to check if 'manager' has 'employees' under them
    # if yes, then we add them to employees array

    total = 0
    @employees.each do |employee|
      if employee.is_a?(Manager)
       total += employee.employees
      else
      total += employee.salary
      end
    end
      total * multiplier
  end

#   Name	    Salary	      Title	        Boss
#   Ned	      \$1,000,000	  Founder	      nil
#   Darren	  \$78,000	    TA Manager	  Ned
#   Shawna	  \$12,000	    TA	          Darren
#   David	    \$10,000	    TA	          Darren

# bonus = (total salary of all sub-employees) * multiplier

end
ned = Manager.new("Ned", "Founder", 1,000,000, nil)
darren = Manager.new("Darren", "TA Manager", 78,000, "Ned")
shawna = Employee.new("Shawna", "TA", 12,000, "Darren")
david = Employee.new("David", "TA", 10,000, "Darren")


# ned.bonus(5) # => 500_000
# darren.bonus(4) # => 88_000
# david.bonus(3) # => 30_000

#David's base salary is 10,000