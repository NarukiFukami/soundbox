class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string "name"
      t.string "label"
      t.string "country"
      t.timestamps
    end
  end
end
