json.extract! contact, :id, :meno, :priezvisko, :titul_pred, :titul_za, :klapka, :verejne_cislo, :sluzobny_mobil, :created_at, :updated_at, :pohlavie
json.url contact_url(contact, format: :json)
