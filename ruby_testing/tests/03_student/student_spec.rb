
# Student Class should have a firstname
# Student Class should have a lastname
# Student Class should have fullname (firstname + lastname)
# Student Class should have a method returning grades in the array
# Student Class should have a method saying if his average mark is higher then 3

require_relative 'student'

RSpec.describe Student do

  #before do
  #  @student = Student.new("Jan", "Pio", [3,4,6,7,8])
  #end

  describe "Responce to instance methods" do

    subject { Student.new("Jan", "Pio", [5,5,5,5,5]) }

    it { respond_to(:first_name) }
    it { respond_to(:last_name) }
    it { respond_to(:full_name) }
    it { respond_to(:grade_array) }
    it { respond_to(:average) }

  end

  it "Should check if grade_array is an array" do
    student = Student.new("Jan", "Pio", [5,5,5,5,5])
    result = student.grade_array.kind_of?(Array)
    expect(result).to be_truthy
  end

  it "Should  return true if student grades average is higher then 3" do
    student = Student.new("Jan", "Pio", [5,5,5,5,5])
    result = student.average
    expect(result).to be_truthy
  end

  it "Should return false if student grades average is lower then 3" do
    student = Student.new("Jan", "Pio", [1,1,1,1,1])
    result = student.average
    expect(result).to be_falsey
  end

  describe "total number of students created" do
    it "should have 3 students in total" do
      expect(Student.total_count).to eq(3)
    end
  end
end