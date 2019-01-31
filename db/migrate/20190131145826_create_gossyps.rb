class CreateGossyps < ActiveRecord::Migration[5.2]
  def change
    create_table :gossyps do |t|
      t.string :title
      t.string :content
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
