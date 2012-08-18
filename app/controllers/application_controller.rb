class ApplicationController < ActionController::Base
  utf8_enforcer_workaround
  protect_from_forgery
end
