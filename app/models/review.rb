# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
end
