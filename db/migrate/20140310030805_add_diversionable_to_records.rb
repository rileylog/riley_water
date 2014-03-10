class AddDiversionableToRecords < ActiveRecord::Migration
  def change
    add_reference :records, :diversionable, polymorphic: true, index: true
  end
end
