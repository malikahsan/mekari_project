class Employee < ApplicationRecord
  belongs_to :company
  has_and_belongs_to_many :policies

  validates :name, format: {with: /\A[a-zA-Z\s]{2,50}\z/i}, presence: true
  validates :email, format: { with: /\A[a-zA-Z0-9.\/_{|}-]+@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: true
  validates :phone, numericality: true, length: { minimum: 10, maximum: 13 }, uniqueness: true, presence: true

  acts_as_nested_set
end
