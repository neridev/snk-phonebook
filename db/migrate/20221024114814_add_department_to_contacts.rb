class AddDepartmentToContacts < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :department, null: true, foreign_key: true
  end
end
