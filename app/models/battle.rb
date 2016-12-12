# frozen_string_literal: true
class Battle < ActiveRecord::Base
  belongs_to :user
  validates :url, presence: true
  validates :url, format: { with: URI.regexp }, if: 'url.present?'
end
