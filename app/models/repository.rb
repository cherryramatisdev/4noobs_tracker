# frozen_string_literal: true

class Repository < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :issues
end
