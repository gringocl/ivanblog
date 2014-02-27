class AddIndexPostidtoPost < ActiveRecord::Migration
  def up
    add_index :posts, :id
  end

  def down
  end
end
