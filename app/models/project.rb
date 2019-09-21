class Project < ApplicationRecord
	# belongs_to :team
	has_and_belongs_to_many :users

	# validates :name, :presence => true, :on => :save

    # validates_presence_of :title, message: "can't be blank"
    validates_presence_of :title, :name, :team_id, :description, message: "can't be blank"
end
