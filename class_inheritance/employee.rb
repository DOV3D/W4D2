

class Employee

  attr_reader :name, :title, :salary
  attr_accessor :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary.to_i
    @boss = boss
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
  end

end