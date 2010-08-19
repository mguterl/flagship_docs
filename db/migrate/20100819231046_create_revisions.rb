class CreateRevisions < ActiveRecord::Migration
  def self.up
    create_table :revisions do |t|
      t.integer :document_id
      t.integer :user_id
      t.integer :position
      t.string :upload_file_name
      t.string :upload_content_type
      t.integer :upload_file_size
      t.datetime :upload_updated_at
      t.binary :upload_file,         :limit => 2147483647

      t.timestamps
    end
  end

  def self.down
    drop_table :revisions
  end
end
