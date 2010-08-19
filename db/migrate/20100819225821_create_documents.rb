class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :title
      t.text :description
      t.boolean :readable, :default => true
      t.boolean :writable, :default => false
      t.integer :downloaded, :default => 0
      t.integer :category_id
      t.integer :user_id
      t.text :current_revision_text

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
