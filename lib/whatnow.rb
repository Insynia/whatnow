require 'whatnow/engine'

module Whatnow
  def self.setup
    yield self
  end

  mattr_accessor :auth_method, :user_model
end
