class AddPolicyToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :policy, :string
  end
end
