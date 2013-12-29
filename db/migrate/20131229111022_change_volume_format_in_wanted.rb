class ChangeVolumeFormatInWanted < ActiveRecord::Migration
  def up
    change_column :wanteds, :volume, :float
  end

  def down
    change_column :wanteds, :volume, :integer
  end
end
