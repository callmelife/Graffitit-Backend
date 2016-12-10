class AddUrlToBattles < ActiveRecord::Migration
  def change
    add_column :battles, :url, :string
  end
end
