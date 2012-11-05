class User < ActiveRecord::Base
  attr_accessible :login, :email, :password, :password_confirmation #zeby tylko te atrybuty byly dostepne do uzupelnienia w formularzu rejestracji
  has_secure_password
  validates_presence_of :password, :on => :create
  
  has_many :things
end
