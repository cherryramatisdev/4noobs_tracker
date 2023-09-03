# frozen_string_literal: true

class Issue < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  belongs_to :repository
end
