class Progress < ApplicationRecord
  belongs_to :user

  validates_presence_of :progress_percent, :level
end
