class CreateAnimes < ActiveRecord::Migration
  def self.up
    create_table :anime do |t|
      t.string :title
      t.integer :rating
      t.string :image
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :anime
  end
end
