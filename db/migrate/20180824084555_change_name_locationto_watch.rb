class ChangeNameLocationtoWatch < ActiveRecord::Migration[5.2]
  def change
    rename_column :watches, :location, :address
  end
end
