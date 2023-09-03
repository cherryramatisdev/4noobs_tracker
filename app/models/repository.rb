# frozen_string_literal: true

class Repository < ApplicationRecord
  include WillPaginate::ActiveRecord

  has_many :issues
end
