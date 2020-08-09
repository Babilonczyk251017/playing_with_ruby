class Student

  attr_reader :first_name, :last_name, :grade_array

  @@total_count = 0

  def initialize(name, lastname, grades)
    @first_name = name
    @last_name = lastname
    @grade_array = grades
    @@total_count += 1
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def grade_array
    @grade_array
  end

  def average
    res = 0

    @grade_array.each do |mark|
      res += mark
    end

    res = res/@grade_array.length()

    if res>3
      true
    elsif res<=3
      false
    end
  end

  def self.total_count
    @@total_count
  end

end