class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients, dependent: :destroy
    has_many :steps, dependent: :destroy
    accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :steps, allow_destroy: true, reject_if: :all_blank
  end
  
