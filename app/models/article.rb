class Article < ActiveRecord::Base
  extend FriendlyId
  	friendly_id :slug_candidates, use: [:slugged, :finders]
  	
  	def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  	end

	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
end
