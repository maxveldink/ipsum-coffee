# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ApplicationController`.
# Please instead update this file by running `bin/tapioca dsl ApplicationController`.

class ApplicationController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionController::Base::HelperMethods
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
