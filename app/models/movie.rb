class Movie < ApplicationRecord
  validate :name, presence: true
  validate :synopsis, presence: true
  validate :director, presence: true
end
