class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :meno
      t.string :priezvisko
      t.string :titul_pred
      t.string :titul_za
      t.string :klapka
      t.string :verejne_cislo
      t.string :sluzobny_mobil

      t.timestamps
    end
  end
end
