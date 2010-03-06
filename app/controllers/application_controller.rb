# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Userstamp
  before_filter :login_required
  before_filter :set_current_user
  after_filter :flex_error_handling
  helper :all # include all helpers, all the time
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  protected
    def set_current_user
      current_user = self.current_user
    end
 end
