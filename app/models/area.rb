class Area < ActiveRecord::Base
  has_many :wanteds, dependent: :destroy
  mount_uploader :kml, KmlUploader
end
