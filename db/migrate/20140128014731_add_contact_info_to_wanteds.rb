class AddContactInfoToWanteds < ActiveRecord::Migration
  def change
    add_column :wanteds, :contact_info, :string
  end
end
