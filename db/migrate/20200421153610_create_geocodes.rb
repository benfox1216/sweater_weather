class CreateGeocodes < ActiveRecord::Migration[5.1]
  def change
    create_table :geocodes do |t|
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
