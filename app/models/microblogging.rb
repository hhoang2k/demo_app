class Microblogging < ActiveRecord::Base
  belongs_to: user
  validates :name, length: {maximum: 140}
  validates :email, length: {maximum: 140}
end
