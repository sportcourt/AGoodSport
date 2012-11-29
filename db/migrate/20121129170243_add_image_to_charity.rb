class AddImageToCharity < ActiveRecord::Migration
  def change
    add_column :charities, :image, :string
  end
end
