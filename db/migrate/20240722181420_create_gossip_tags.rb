class CreateGossipTags < ActiveRecord::Migration[6.1]
  def change
    create_table :gossip_tags do |t|
      t.references :gossip, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
