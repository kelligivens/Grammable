class Picture < ApplicationRecord
  belongs_to :gram
  
  def change
    add_column :grams, :picture, :string
    add_index :grams, :picture
  end
end
