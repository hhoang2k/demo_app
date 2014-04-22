class User < ActiveRecord::Base
  has_many :microbloggings
end
