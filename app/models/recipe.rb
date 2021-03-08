class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :destroy
    has_many :steps, dependent: :destroy

    accepts_nested_attributes_for :ingredient, reject_if: :all_blank, allow_destroy: true
  end
  
