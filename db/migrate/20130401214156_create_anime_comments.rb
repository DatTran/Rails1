class CreateAnimeComments < ActiveRecord::Migration
  def change
    create_table :anime_comments do |t|
      t.string :commenter
      t.text :body
      t.references :anime

      t.timestamps
    end
    add_index :anime_comments, :anime_id
  end
end
