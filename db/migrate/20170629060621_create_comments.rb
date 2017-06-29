class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :Post_id
      t.string :integer

      t.timestamps
    end
  end
end
