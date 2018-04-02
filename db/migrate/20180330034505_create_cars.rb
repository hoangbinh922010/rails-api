class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :ten
      t.string :hang
      t.string :gia
      t.string :nam_SX

      t.timestamps
    end
  end
end
