class AddTitleToBathrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :bathrooms, :title, :string
  end
end
