module Types
	module Objects
		module Consultation
			class List < BaseObject
				field :data,								[Types::Objects::Consultation::Base], nil, null: true
				field :paging,							Types::Objects::Paging,               nil, null: false
			end
		end
	end
end