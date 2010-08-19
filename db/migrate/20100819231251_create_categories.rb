class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :private, :default => false
      t.boolean :writable, :default => false
      t.integer :parent_id
      t.integer :group_id
      t.integer :user_id
      t.integer :children_count
      t.integer :ancestors_count
      t.integer :descendants_count
      t.integer :background_id
      t.boolean :is_featured

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
