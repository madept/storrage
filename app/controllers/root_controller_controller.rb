class RootControllerController < ApplicationController
 
  def index
  
 	 env = EnvironmentInfo.new
 	 envData=env.getEnvironment
 	 session[:env]=envData
 	 session[:redirect_url]="https://qa-stg.herokuapp.com/home"
 	@text=envData.web_app_sign_in_url
  
  end
  
  def home
  userInfo = UserInfo.new
 # url= session[:env].customerApiUrl
  @resp =userInfo.loadSessions("https://app-qa.storrage.com/rest/v1/sessions")
   @status=@resp['success']
  
  end 
end
