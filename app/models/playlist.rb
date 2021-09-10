class Playlist < ApplicationRecord
	has_many :artists, dependent: :destroy
	validates :artist, presence: true
end



# class Person < ActiveRecord::Base
# 	def self.by_first_name
# 		order(:first_name)
# 	end
# end

# class Person < ApplicationRecord
# 	validates :name, length: { minimum: 2 }
# end



# ASSOCIATIONS AND VALIDATIONS GO HERE
#ASSOCIATIONS - describing relationship (HE SLACKED OUT THE ASSOCIATION SHEET)
# will be inside of your models

# VALIDATIONS - we be inside of your models

# MODEL METHODS - 

# belongs_to - childrens models, describes who the parent is

# PARENTS MODEL - 
# has_many = related to multiple types of records
# has_one = is only related to a single record

# has_many :through - advance topic he will talk about later
# 	dependent - this will help us clean things up. When we delete the 
#               parent it will delete all of the children

# Model Validations = stop in the model to validate data going into the db

# 2:13:51 EXAMPLES OF VALIDATIONS - we are validating the attr, fields of the tables model. This iwll be in schema.
# confirmation = 2 fields same content ie: password and password confirmation - two fields that match eachother before moving on. will come back to that later on in upcomming weeks

# INCLUSION = matches up with what you are to include within given set ie: make sure they are only typing in s, m, l anything else wouldn't work.
# class Coffee < ActiveRecord::Base
# 	validates :size, inlcusion: {
# in: %w(small medium large),
# 	message: "%{value} is not a valid size"
# 	}
# end
# # length = will validate charectar count of value 
# class Person < ActiveRecord::Base
# 	validates :name, length: { minimum: 2 }
# 	validates :bio, length: { minimum: 500 }
# 	validates :password, length: { in: 6..20 }
# 	validates :registration_number, length: { is: 6 }
# end

# # numericality = only numeric values, float, interger
# class Player < ActiveRecord::Base
# 	validates :points, numericality: true
# 	validates :games_played, numericality: { only_interger: true }
# 	validates :golf_handicap, numericality: { less_than_or_equal_to: 10 }
# end

# # presence = makes sure it is not empty or nil. user must fill out fields
# class Person < ActiveRecord::Base
# 	validates :name, :login, :email, presence: true (makes sure they've filled all info out)

# # uniqueness = makes sure there is only one object that gets saved with that value
# class Account < ActiveRecord::Base
# 	validates :email, uniquness: true
# end

# Our models will check off these validations before moving forward. Makes usre we have the data we need before preceeding.
# validates :first_name, :last_name, :email, presence: true
# validates :age, nuumericality: true (can go more in dpeth like has to be this age etc.)
# validates :email, uniquness: true

# allow nil
# allow black
#message
# on - only run on a particular action - like deleting, creating, etc.

# MODEL METHODS / CALL BACKS
# CALL BACK IS TO TRIGGER CODE WHEN AN EVENT IS run	
# before_validation = 
# after_validation
# after_save
# before_create
# after_create 
# around_save
# around_create

# before_save example:

# class CreditCard < ActiveRecord::Base
# 	before_save :encrypt_card_number

# 	private

# 		def encrypt_card_number
				# self.card_number = bcrypt(self.card_number)
# 		end
# 	end
# end
# THESE GO INSIDE MODELS 

# # CLASS METHOD
# class Person < ActiveRecord::Base
# 	def self.by_first_name
# 		order(:first_name)
# 	end
# end


# # INSTANCE METHOD
# class Person < ActiveRecord::Base
# 	def full_name
# 		"#{self.first_name} {self.last_name}" <-- we are calling the instance {}
# 	end
# # end
# all logic that has to do with the data will be in the model

# 	We should have fat models and skinny controllers
# ALL LOGIC SHOULD BE IN THE MODEL
# Controllers are your traffic directors they sholdn't have the logic. If you wanted to sort the contacts you should do it in the models.
# Controllers should only handle certain actions:
# actions - include stuff you are able to do inside project. Funcitonal features.
# ACTIONS - They include CRUD, events you can do functionally in the application.
# any other logic should be in the models