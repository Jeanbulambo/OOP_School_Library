require_relative '../teacher'

describe Teacher do
  context 'When creating a teacher' do
    teacher = Teacher.new(nil, 31, 'Chemistry', 'Jean')

    it "should return 'Jean' as a teacher name" do
      expect(teacher.name).to eq 'Jean'
    end

    it "should return '31' as a teacher age" do
      expect(teacher.age).to eq 31
    end

    it "should return 'Chemistry' as a teacher specialization" do
      expect(teacher.specialization).to eq 'Chemistry'
    end

    it 'can_use_services method from teacher class should return true' do
      expect(teacher.can_use_services?).to eq true
    end
  end
end
