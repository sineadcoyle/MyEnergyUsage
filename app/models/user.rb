class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include SentientUser
  track_who_does_it
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
