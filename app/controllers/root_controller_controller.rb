class RootControllerController < ApplicationController
 
  def index
  
 	 env = EnvironmentInfo.new
 	 envData=env.getEnvironment
 	 session[:env]=envData
 	 session[:redirect_url]="http://localhost:3000/home"
 	@text=envData.web_app_sign_in_url
  
  end
  
  def home
  userInfo = UserInfo.new
  url= session[:env].customerApiUrl
  @response =userInfo.loadSessions(url+"/sessions")
   
  
  end 
end
