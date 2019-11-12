module Scorable
  module Ministry
    extend ActiveSupport::Concern
    include Scorable

    included do 

	    if respond_to? :before_save
	      before_save :add_ministry_created_points, if: :is_approved_changed?
	    end

	    def add_ministry_created_points
	    	self.created_by.add_points(:ministry_created) if self.is_approved_changed?(from: false, to: true)
	    end
	  end
  end
end