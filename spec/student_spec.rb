require_relative '../student'

describe Student do
  context 'When creating a Student' do
    student = Student.new(nil, 31, 'Jean', false)
    it "Should return 'Jean' as the student name" do
      expect(student.name).to eq 'Jean'
    end

    it "Should return '31' as the Student age" do
      expect(student.age).to eq 31
    end

    it 'Should return false as the Student parent_permission' do
      expect(student.parent_permission).to eq false
    end

    it "Should return '¯\(ツ)/¯' as the student name" do
      expect(student.play_hook).to eq "¯\(ツ)/¯"
    end
  end
end
