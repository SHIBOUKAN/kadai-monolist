class AddItemPriceToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :item_price, :integer
  end
end
