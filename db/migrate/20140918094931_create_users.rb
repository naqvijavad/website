class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.string :location
      t.string :profession
      t.boolean :married

      t.timestamps
    end
  end
end
