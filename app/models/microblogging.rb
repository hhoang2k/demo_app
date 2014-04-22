class Microblogging < ActiveRecord::Base
<<<<<<< HEAD
  validates :name, length: {maximum: 140}
  validates :email, length: {maximum: 140}
=======
  validates :name, length: { maximum: 140 }
  validates :email, length: { maximum: 140 }
>>>>>>> FETCH_HEAD
end
