class Team < ApplicationRecord
   has_many :users
   has_many :projects

   validates_presence_of :name, message: "can't be blank"
   validates :name, uniqueness: true
end
