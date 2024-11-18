class ModifyReferenceToArts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :arts, :user, foreign_key:true
    add_reference :arts, :owner, foreign_key: { to_table: "users" }
  end
end
