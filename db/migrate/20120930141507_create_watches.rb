class CreateWatches < ActiveRecord::Migration
  def change
    create_table :watches do |t|
      t.belongs_to  :movie
      t.belongs_to  :user
      t.string      :status
      t.timestamps
    end
  end
end
