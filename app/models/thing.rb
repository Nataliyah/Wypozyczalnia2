class Thing < ActiveRecord::Base
  belongs_to :user
  has_one :lending, :dependent => :destroy #usunie wszystkie lendingi, jesli taki thing zostanie skasowany
end
