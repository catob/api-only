class User < ApplicationRecord
  has_one :progress

  validates_presence_of :name, :email
end
