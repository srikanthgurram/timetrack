class Employee < ActiveRecord::Base
	before_save :downcase_username

	#add associations
	belongs_to :company
	has_many :works
	has_many :projects, :through => :works

	#add validations
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :username, uniqueness: true
	validates :username, length:{ minimum: 5 }
	validates :company, presence: true

	def username_exists?
		Employee.where(:username => nil) ? false : true
	end

	def to_s
		first_name+" "+last_name
	end

	#Convert username to lowercase
	private
		def downcase_username
			self.username = self.username.downcase
		end
end
