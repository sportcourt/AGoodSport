class AddContactToCharity < ActiveRecord::Migration
  def change
    add_column :charities, :contact, :string
    add_column :charities, :phone, :string
    add_column :charities, :email, :string
    add_column :charities, :website, :string
  end
end
