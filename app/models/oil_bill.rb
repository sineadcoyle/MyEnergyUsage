class OilBill < ActiveRecord::Base
  belongs_to :users
  track_who_does_it
end
