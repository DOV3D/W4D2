class Manager < Employee

  def initialize
    @employees = []

  end


  # managers should get a bonus based on total salary of their subordinates
  # need to check if manager's subordinates' subordinates are also managers
  # subordinates' subordinates' subordinates, etc.

  def bonus
    # logic to check if 'manager' has 'employees' under them
    # if yes, then we add them to employees array


    bonus = 0
    @employees.each do |employee|
      bonus = employee.salary * multiplier
  end

#   Name	    Salary	      Title	        Boss
#   Ned	      \$1,000,000	  Founder	      nil
#   Darren	  \$78,000	    TA Manager	  Ned
#   Shawna	  \$12,000	    TA	          Darren
#   David	    \$10,000	    TA	          Darren

# bonus = (total salary of all sub-employees) * multiplier


end

ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000