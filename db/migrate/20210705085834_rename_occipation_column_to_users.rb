class RenameOccipationColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :occipation, :occupation
  end
end
