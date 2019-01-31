class CreatePrimaryComments < ActiveRecord::Migration[5.2]
  def change
    create_table :primary_comments do |t|
      t.string :content
      t.belongs_to :gossip, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
