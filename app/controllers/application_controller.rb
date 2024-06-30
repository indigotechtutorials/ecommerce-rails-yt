class ApplicationController < ActionController::Base
  protected

  def check_admin_priv
    if !current_admin
      redirect_to root_path
    end
  end
end
