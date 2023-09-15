require 'rails_helper'

RSpec.describe Repository, type: :model do
  context 'when saving repository' do
    it 'should save with valid name' do
      repository = Repository.new(name: 'test', owner: 'test', url: 'http://test.com', technology: 'A', technology_image_pattern: 'a')
      expect(repository.valid?).to be_truthy
      expect(repository.save).to be_truthy
    end

    it 'should not save without name' do
      repository = Repository.new(owner: 'test', url: 'http://test.com', technology: 'A', technology_image_pattern: 'a')
      expect(repository.valid?).to be_falsy
      expect(repository.save).to be_falsy
      expect(repository.errors[:name]).to include(%{can't be blank})
    end

    it 'should not save duplicate name' do
      Repository.create(name: 'test', owner: 'test', url: 'http://test.com', technology: 'A', technology_image_pattern: 'a')
      repository = Repository.new(name: 'test', owner: 'test', url: 'http://test.com', technology: 'A', technology_image_pattern: 'a')
      expect(repository.valid?).to be_falsy
      expect(repository.save).to be_falsy
      expect(repository.errors[:name]).to include(%{has already been taken})
    end
  end
end
