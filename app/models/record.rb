class Record < ActiveRecord::Base
  has_many :diversons, :as => :diversionable 
  has_many :areas, :as => :areaable 
  belongs_to :area
  belongs_to :owner 
  has_many :diversions 
  belongs_to :recordable, :polymorphic => true 
end
 