class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Name
      t.text :Email
      t.string :encryted_password
      t.timestamps
    end
  end
end
