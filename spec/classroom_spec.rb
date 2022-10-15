require_relative '../classroom'
require_relative '../student'

describe ClassRoom do
  context 'When creating a ClassRoom ' do
    classroom = ClassRoom.new('Science')
    it 'It should return "Science" as the ClassRoom Label' do
      expect(classroom.label).to eql 'Science'
    end
  end
end