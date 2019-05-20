class CreateSasaerus < ActiveRecord::Migration[5.2]
  def change
    create_table :sasaerus do |t|
      t.string :top_text
      t.string :title, null:false
      t.string :sub_title
      t.string :author, null:false
      t.string :base_color
      t.string :lead, null:false
      t.string :sub_lead_1
      t.string :sub_lead_2
      t.string :sub_lead_3
      t.string :sub_lead_4
      t.string :bottom_text

      t.timestamps
    end
  end
end
