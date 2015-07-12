class User < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :slug_candidates, use: [:slugged, :finders]
  	
  	def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  	end

	attr_accessor :password_confirmation
  	has_secure_password
  
  	validates :password_confirmation, presence: true, if: :password_digest_changed?
  	validates_confirmation_of :password, if: :password_digest_changed?
end
