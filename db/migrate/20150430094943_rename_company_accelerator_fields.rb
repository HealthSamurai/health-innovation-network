class RenameCompanyAcceleratorFields < ActiveRecord::Migration
  def change
    rename_column :users, :company_name_of_ace, :company_ace_name
    rename_column :users, :company_site, :company_ace_url
    rename_column :users, :company_contact_person, :company_ace_contact
  end
end
