class CreateFsstates < ActiveRecord::Migration
  def change
    create_table :fsstates do |t|
      t.string :name
      t.string :acronym
      t.belongs_to :fscountries, index: true

      t.timestamps
    end
  end
end
