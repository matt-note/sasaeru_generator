class CreateSasaerus < ActiveRecord::Migration[5.2]
  def change
    create_table :sasaerus do |t|
      t.string :top_text, default: "WAVE+BB PRESS"
      t.string :title, null:false, default: "〇〇〇〇〇〇〇を支える技術"
      t.string :sub_title, default: "なんらかのサブタイトル"
      t.string :author, null:false, default: "名無しの権兵衛"
      t.string :base_color, default: "#b2a2c7"
      t.string :lead, null:false, default: "なんらかの文章。なんらかの文章。なんらかの文章。"
      t.string :sub_lead_1, default: "Lorem ipsum／dolor sit amet／consectetur"
      t.string :sub_lead_2, default: "adipiscing elit／Duis orci dolor／consequat"
      t.string :sub_lead_3, default: "vitae dolor non／tincidunt／maximus felis"
      t.string :sub_lead_4, default: "Lorem ipsum／dolor sit amet／consectetur"
      t.string :bottom_text, default: "なんらかのボトムテキスト"
      t.string :publisher, default: "〇〇評論社"

      t.timestamps
    end
  end
end
