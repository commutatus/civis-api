module Types
	module Inputs
		module ConsultationResponse
			class Create < Types::BaseInputObject
				graphql_name "ConsultationResponseCreateInput"
				argument :answers,											GraphQL::Types::JSON,																		nil,	required: false
				argument :consultation_id,							Int,																										nil,	required: true
				argument :response_text,								String,																								nil,	required: false
				argument :response_status,							Int,																										nil,	required: true
				argument :satisfaction_rating,					Types::Enums::ConsultationResponseSatisfactionRatings,	nil,	required: false
				argument :template_id,									Int,																										"ID of the response you are using as a template",	required: false, default_value: nil
				argument :visibility,										Types::Enums::ConsultationResponseVisibilities,					nil,	required: true
			end
		end
	end
end