class EnvironmentInfo<BaseModel
	
	@@_instance
	attr_accessor :customerApiUrl,  :baseUrl, :customerSignInUrl, :customerSignUpUrl,:web_app_sign_in_url
	
	
   def getEnvironment	
		response = HTTParty.get("http://bootstrap.storrage.com/urls?environment=qa&app_version=V2.3")	
		#logger.debug(response.body)
		createFromJson(response)
	end

	
	def createFromJson ( data)	
	
		@@_instance=EnvironmentInfo.new
		@@_instance.customerApiUrl=data['urls'][0]['customer_api_url']
		@@_instance.baseUrl=data['urls'][0]['base_url']
		@@_instance.customerSignInUrl=data['urls'][0]['customer_sign_in_url']
		@@_instance.customerSignUpUrl=data['urls'][0]['customer_sign_up_url']
		@@_instance.web_app_sign_in_url=data['urls'][0]['web_app_sign_in_url']
		@@_instance
	
	end

end