class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :contact
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
