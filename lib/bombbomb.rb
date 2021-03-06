=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.831

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'bombbomb/api_client'
require 'bombbomb/api_error'
require 'bombbomb/version'
require 'bombbomb/configuration'

# Models
require 'bombbomb/models/bb_web_hook'
require 'bombbomb/models/client_group_asset_meta_data'
require 'bombbomb/models/curriculum'
require 'bombbomb/models/curriculum_user_progress'
require 'bombbomb/models/curriculum_with_progress'
require 'bombbomb/models/hosted_doc'
require 'bombbomb/models/inline_response_200'
require 'bombbomb/models/jericho_configuration'
require 'bombbomb/models/jericho_performance'
require 'bombbomb/models/o_auth_client'
require 'bombbomb/models/prompt_bot'
require 'bombbomb/models/prompt_monthly_performance'
require 'bombbomb/models/prompt_overview'
require 'bombbomb/models/prompt_social_prompt'
require 'bombbomb/models/sign_upload_request'
require 'bombbomb/models/sign_upload_response'
require 'bombbomb/models/string'
require 'bombbomb/models/team_public_representation'
require 'bombbomb/models/video_email_prompt'
require 'bombbomb/models/video_encoding_status_response'
require 'bombbomb/models/video_public_representation'
require 'bombbomb/models/video_recorder_method_response'

# APIs
require 'bombbomb/api/accounts_api'
require 'bombbomb/api/automations_api'
require 'bombbomb/api/contacts_api'
require 'bombbomb/api/curriculum_api'
require 'bombbomb/api/emails_api'
require 'bombbomb/api/files_api'
require 'bombbomb/api/forms_api'
require 'bombbomb/api/integrations_api'
require 'bombbomb/api/lists_api'
require 'bombbomb/api/orders_api'
require 'bombbomb/api/prompts_api'
require 'bombbomb/api/socials_api'
require 'bombbomb/api/teams_api'
require 'bombbomb/api/users_api'
require 'bombbomb/api/utilities_api'
require 'bombbomb/api/videos_api'
require 'bombbomb/api/webhooks_api'

module BombBomb
  class << self
    # Customize default settings for the SDK using block.
    #   BombBomb.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
