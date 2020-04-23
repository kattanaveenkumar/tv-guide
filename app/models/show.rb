class Show < ApplicationRecord
	belongs_to :channel
  has_one :favourite

  after_create :update_time_format

	def is_favourite?
		self.favourite.present?
	end

  def self.search(q)
  	where('lower(name) LIKE ?', "%#{q.downcase}%")
  end

  def update_time_format
  	self.update!(start_time: self.start_time.to_datetime)
  end
end
