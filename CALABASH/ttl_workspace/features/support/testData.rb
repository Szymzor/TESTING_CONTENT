class User
	def initialize(email, password)
		@email = email
		@password = password
	end
	
	def getEmail
		@email
	end
	
	def getPassword
		@password
	end
end

$testUser = User.new("test@mobica.com", "password")



$testStation1 = "London Fenchurch Street"
$testStation2 = "West Ham"

$testDate1 = Date.today() + 1
$testTime1 = Time.now()