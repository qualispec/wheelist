module ApplicationHelper

  # The following 3 helper methods are to get the Devise signup/signin pages
  # as Bootstrap modals.
  # source: https://github.com/plataformatec/devise/wiki/How-To:-Display-a-custom-sign_in-form-anywhere-in-your-app

  def resource_name
    :user
  end
 
  def resource_class
    User
  end

  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end