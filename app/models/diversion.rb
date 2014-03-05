class Diversion < ActiveRecord::Base
  has_many :records, :as => :recordable 
  has_many :areas, :as => :areaable 
  belongs_to :diversionable, :polymorphic => true 
end
