class AddCaptionToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :caption, :string
  end
end
