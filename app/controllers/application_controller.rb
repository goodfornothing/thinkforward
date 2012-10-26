class ApplicationController < ActionController::Base
  protect_from_forgery

  require 'sir-trevor-rails'

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, :with => :application_error
  end
 
  def application_error(exception)
    ExceptionNotifier::Notifier.exception_notification(request.env, exception).deliver
  end

end
