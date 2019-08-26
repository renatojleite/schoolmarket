class AddCategoryToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :category, :integer
  end
end
