# frozen_string_literal: true
class Battle < ActiveRecord::Base
  belongs_to :user
  # validates :text, :user, presence: true
end
