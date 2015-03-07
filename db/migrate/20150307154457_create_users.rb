class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :tel
      t.string :dir

      t.timestamps
    end
  end
end
