# Should have been named create_cards
class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer  :multiverse_id, null: false
      t.string   :image_url, null: false
    end
  end
end
