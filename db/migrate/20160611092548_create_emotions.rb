class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.string :group_emotion
      t.string :emotion
      t.string :color

      t.timestamps null: false
    end
  end
end
