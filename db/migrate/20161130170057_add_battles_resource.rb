class AddBattlesResource < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.string :title
      t.string :description
      t.string :artist
      t.string :location
      t.date :date_photographed
    end
  end
end
