class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string  :mp3_file_name
      t.string  :mp3_content_type
      t.integer :mp3_file_size
      t.datetime :mp3_updated_at

      t.timestamps null: false
    end
  end
end
