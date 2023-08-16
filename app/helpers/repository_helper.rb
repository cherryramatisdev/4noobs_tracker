# frozen_string_literal: true

module RepositoryHelper
  # @param issue_state [String] Will be either open or closed, anything else will be used a general color
  def issue_state_color(issue_state:)
    case issue_state
    in 'open'
      return 'bg-success'
    in 'closed'
      return 'bg-danger'
    end
  end
end
