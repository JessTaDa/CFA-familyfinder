class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :persons
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

after_create :assign_relation_self

def assign_relation_self
  self.relation(:'Self')
  
end


end
