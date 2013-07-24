class User < ActiveRecord::Base
has_many :responses
has_many :surveys
attr_accessible :email, :password, :password_confirmation

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
