class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  validates :name, :user_id, presence: true
  accepts_nested_attributes_for :questions
end
