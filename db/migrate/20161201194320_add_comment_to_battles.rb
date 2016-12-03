class AddCommentToBattles < ActiveRecord::Migration
  def change
    add_column :battles, :comment, :string
  end
end
