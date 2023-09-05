# frozen_string_literal: true

require 'faker'

# Create 10 repositories
10.times do
  repository = Repository.create(
    name: Faker::App.name,
    owner: Faker::Internet.user_name,
    url: Faker::Internet.url
  )

  # Create 2 issues for each repository
  2.times do
    Issue.create(
      title: Faker::Lorem.sentence,
      url: Faker::Internet.url,
      state: 'open',
      assignee: Faker::Internet.user_name,
      issue_type: 'issues',
      repository: repository
    )
  end
end
