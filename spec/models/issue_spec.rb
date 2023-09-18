require 'rails_helper'

RSpec.describe Issue, type: :model do
  context 'when saving issue' do
    it 'should save with valid url' do
      repository = Repository.create(name: 'test', owner: 'test', url: 'http://test.com')

      issue = Issue.new(title: 'test', url: 'https://test.com', state: 'test', assignee: '', issue_type: 'test',
                        repository_id: repository.id)
      expect(issue.valid?).to be_truthy
      expect(issue.save).to be_truthy
    end

    it 'should not save without url' do
      repository = Repository.create(name: 'test', owner: 'test', url: 'http://test.com')

      issue = Issue.new(title: 'test', state: 'test', assignee: '', issue_type: 'test', repository_id: repository.id)
      expect(issue.valid?).to be_falsy
      expect(issue.save).to be_falsy
      expect(issue.errors[:url]).to include(%(can't be blank))
    end

    it 'should not save duplicate url' do
      repository = Repository.create(name: 'test', owner: 'test', url: 'http://test.com')

      Issue.create(title: 'test', url: 'https://test.com', state: 'test', assignee: '', issue_type: 'test',
                   repository_id: repository.id)
      issue = Issue.new(title: 'test', url: 'https://test.com', state: 'test', assignee: '', issue_type: 'test',
                        repository_id: repository.id)
      expect(issue.valid?).to be_falsy
      expect(issue.save).to be_falsy
      expect(issue.errors[:url]).to include(%(has already been taken))
    end
  end
end
