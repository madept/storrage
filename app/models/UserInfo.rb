class UserInfo <BaseModel

def testHttParty
	
		response =HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
		
	end
	
	def loadSessions (url)
	
	response=HTTParty.get(url)
	response
	end
end