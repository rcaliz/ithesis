class ApplicationController < ActionController::Base
  protect_from_forgery

<<<<<<< HEAD
  public

=======
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
  def not_authenticated
  	redirect_to login_url, :alert => "Debe autenticarse para acceder a esta pagina."
  end

end
