class PointOfDiversion < ActiveRecord::Base
  mount_uploader :kml, KmlUploader
end
