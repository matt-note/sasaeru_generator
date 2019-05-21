class AddPublisherToSasaerus < ActiveRecord::Migration[5.2]
  def change
    add_column :sasaerus, :publisher, :string
  end
end
