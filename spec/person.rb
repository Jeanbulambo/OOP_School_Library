require_relative '../person'

describe Person do
  context 'When creating a Person' do
    person = Person.new(32, 'riziki')

    it "It should return '32' as the Person age " do
      expect(person.age).to eq 32
    end

    it "It should return 'riziki' as the Person name " do
      expect(person.name).to eq 'riziki'
    end

    it 'can_use_services of Person class should return true or false' do
      expect(person.can_use_services?).to eq true
    end

    it "It should return 'riziki' from correct_name? " do
      expect(person.correct_name).to eq 'riziki'
    end
  end
end