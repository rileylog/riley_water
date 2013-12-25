class Area < ActiveRecord::Base
  mount_uploader :kml, KmlUploader
end
