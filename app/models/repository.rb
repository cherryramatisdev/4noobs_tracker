# frozen_string_literal: true

class Repository < ApplicationRecord
  include WillPaginate::ActiveRecord

  validates :name, presence: true, uniqueness: true
  has_many :issues
end
