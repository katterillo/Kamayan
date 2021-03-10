class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :destroy
    has_many :steps, dependent: :destroy
    belongs_to :user
    accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc { |att| att['title'].blank? }
  end
  
