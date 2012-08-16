class CreateAnimes < ActiveRecord::Migration
  def self.up
    create_table :animes do |t|
      t.string :title
      t.integer :rating
      t.string :image
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :animes
  end
end
