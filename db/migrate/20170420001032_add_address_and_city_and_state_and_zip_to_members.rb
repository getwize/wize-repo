class AddAddressAndCityAndStateAndZipToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :address, :string
    add_column :members, :city, :string
    add_column :members, :state, :string
    add_column :members, :zip, :string
  end
end
