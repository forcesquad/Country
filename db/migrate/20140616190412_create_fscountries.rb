class CreateFscountries < ActiveRecord::Migration
  def change
    create_table :fscountries do |t|
      t.string :name
      t.integer :ddi
      t.string :currency

      t.timestamps
    end
  end
end
