class RenameContentColumnToPrototypes < ActiveRecord::Migration[6.0]
  def change
    rename_column :prototypes, :content, :concept
  end
end
