class Owner < ActiveRecord::Base
  has_many :records, :as => :recordable 
  has_many :diversions, :as => :diversionable
  belongs_to :ownerable, :polymorphic => true 
end
