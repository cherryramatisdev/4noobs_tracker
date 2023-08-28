# frozen_string_literal: true

class Issue < ApplicationRecord
  belongs_to :repository
end
