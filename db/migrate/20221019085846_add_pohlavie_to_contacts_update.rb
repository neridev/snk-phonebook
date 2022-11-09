class AddPohlavieToContactsUpdate < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :pohlavie, :integer
  end
end
