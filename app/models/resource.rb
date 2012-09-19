class Resource < ActiveRecord::Base
  attr_accessible :location_id, :make, :model, :purchesed_at, :resource_type, :salvage_value, :serial_number, :user_name
end
