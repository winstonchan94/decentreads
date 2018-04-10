class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :logged_in?

  def generate_default_shelves
    Shelf.create(name: "All", user_id: current_user.id)
    Shelf.create(name: "Read", user_id: current_user.id)
    Shelf.create(name: "Currently Reading", user_id: current_user.id)
    Shelf.create(name: "Want to Read", user_id: current_user.id)
  end

  def login(user)
    user.reset_session_token
    session[:session_token] = user.session_token
  end

  def logout
    current_user.reset_session_token
    session[:session_token] = nil
  end

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user
  end
end
