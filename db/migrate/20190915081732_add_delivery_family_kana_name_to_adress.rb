class AddDeliveryFamilyKanaNameToAdress < ActiveRecord::Migration[5.2]
  def change
    add_column :adresses, :delivery_family_kana_name, :string
  end
end
