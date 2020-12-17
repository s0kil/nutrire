class AddMissingIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :action_text_rich_texts, [:record_id, :record_type]
    add_index :active_storage_attachments, [:record_id, :record_type]
  end
end
