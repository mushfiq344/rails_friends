class CreatePostAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :post_attachments do |t|
      t.integer :post_id
      t.string :avatar

      t.timestamps
    end
  end
end
