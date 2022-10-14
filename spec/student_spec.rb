require_relative '../student'

describe Student do
  context 'When creating a Student' do
    student = Student.new(classroom: 'Chemistry', age: 31, id: nil, name: 'Jean', parent_permission: true)
    it "Should return 'Elias' as the student name" do
      expect(student.name).to eq 'Elias'
    end

    it "Should return '31' as the Student age" do
      expect(student.age).to eq 31
    end

    it "Should return '¯\(ツ)/¯' as the student name" do
      expect(student.play_hooky).to eq '¯\(ツ)/¯'
    end
  end
end