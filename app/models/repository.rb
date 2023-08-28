# frozen_string_literal: true

class Repository < ApplicationRecord
  has_many :issues
end
