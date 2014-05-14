class RegistrationsController < Devise::RegistrationsController
 def new
   @token = params[:invite_token] #<-- pulls the value from the url query string
   build_resource({})
   respond_with self.resource
 end

 
 def create
   
  #user_params=params[:user]
#  build_resource(sign_up_params)
#  resource_saved = resource.save
  @newUser = build_resource(sign_up_params)
  @newUser.save
  @token = params[:invite_token]
  if @token != nil
     org =  Invite.find_by_token(@token).user_group #find the user group attached to the invite
     @newUser.user_groups.push(org)                 #add this user to the new user group as a member
  else
     super
  end
end

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

  
end 