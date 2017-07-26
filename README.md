# bombbomb

BombBomb - the Ruby gem for the BombBomb

We make it easy to build relationships using simple videos.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.24005
- Package version: 2.0.24005
- Build date: 2017-07-26T15:26:23.980Z
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bombbomb.gemspec
```

Then either install the gem locally:

```shell
gem install ./bombbomb-2.0.24005.gem
```
(for development, run `gem install --dev ./bombbomb-2.0.24005.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bombbomb', '~> 2.0.24005'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'bombbomb', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'bombbomb'

api_instance = BombBomb::AccountsApi.new

opts = { 
  email: "email_example", # String | Your login email address
  pw: "pw_example", # String | Your password
  api_key: "api_key_example" # String | Your Api Key
}

begin
  #Get account details.
  api_instance.account_details(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->account_details: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.bombbomb.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BombBomb::AccountsApi* | [**account_details**](docs/AccountsApi.md#account_details) | **GET** /accounts | Get account details.
*BombBomb::AccountsApi* | [**create_account**](docs/AccountsApi.md#create_account) | **POST** /accounts | Create Account
*BombBomb::AccountsApi* | [**subscription_purchase_allowed**](docs/AccountsApi.md#subscription_purchase_allowed) | **GET** /accounts/purchaseable | Check if subscription purchase allowed.
*BombBomb::AutomationsApi* | [**get_drip_drop_stats**](docs/AutomationsApi.md#get_drip_drop_stats) | **GET** /automation/{dripId}/dripdrop/{dripDropId}/stats | Get Automation Email Stats
*BombBomb::AutomationsApi* | [**get_drip_stats**](docs/AutomationsApi.md#get_drip_stats) | **GET** /automation/{id}/stats | Get Automation Stats
*BombBomb::ContactsApi* | [**delete_contacts**](docs/ContactsApi.md#delete_contacts) | **PUT** /contacts/delete | Delete Contacts
*BombBomb::CurriculumApi* | [**get_curricula**](docs/CurriculumApi.md#get_curricula) | **GET** /curricula/ | Get Curricula
*BombBomb::CurriculumApi* | [**get_user_curriculum_with_progress**](docs/CurriculumApi.md#get_user_curriculum_with_progress) | **GET** /curriculum/getForUserWithProgress | Get Detailed For User
*BombBomb::EmailsApi* | [**create_printing_press_email**](docs/EmailsApi.md#create_printing_press_email) | **POST** /emails/print | Create an Email with Printing Press
*BombBomb::EmailsApi* | [**get_email_tracking**](docs/EmailsApi.md#get_email_tracking) | **GET** /emails/{emailId}/tracking | Get Email Tracking
*BombBomb::EmailsApi* | [**get_email_tracking_interactions**](docs/EmailsApi.md#get_email_tracking_interactions) | **GET** /emails/{emailId}/tracking/interactions | Get Email Tracking Interactions
*BombBomb::EmailsApi* | [**get_hourly_email_tracking**](docs/EmailsApi.md#get_hourly_email_tracking) | **GET** /emails/{emailId}/tracking/hourly | Get Hourly Email Tracking
*BombBomb::FilesApi* | [**doc_host_delete**](docs/FilesApi.md#doc_host_delete) | **DELETE** /files | Deletes users file
*BombBomb::ListsApi* | [**clear_list**](docs/ListsApi.md#clear_list) | **PUT** /lists/{listId}/clear | Clear Contacts from List
*BombBomb::ListsApi* | [**copy_list_contacts**](docs/ListsApi.md#copy_list_contacts) | **POST** /lists/{listId}/copy | Copy All Contacts from a List
*BombBomb::ListsApi* | [**suppress_all_in_list**](docs/ListsApi.md#suppress_all_in_list) | **PUT** /lists/{listId}/suppress | Suppress All Contacts from List
*BombBomb::OrdersApi* | [**template_asset_delete**](docs/OrdersApi.md#template_asset_delete) | **DELETE** /orders/templates/images | Deletes image from user s3 store
*BombBomb::PromptsApi* | [**create_prompt_bot**](docs/PromptsApi.md#create_prompt_bot) | **POST** /prompts/bots | Create a running Prompt Bot for a list
*BombBomb::PromptsApi* | [**create_video_email_prompt**](docs/PromptsApi.md#create_video_email_prompt) | **POST** /prompt | Prompts user to send a video
*BombBomb::PromptsApi* | [**get_pending_video_email_prompts**](docs/PromptsApi.md#get_pending_video_email_prompts) | **GET** /prompt/pending | List pending prompts
*BombBomb::PromptsApi* | [**get_prompt_bots**](docs/PromptsApi.md#get_prompt_bots) | **GET** /prompts/bots | List Prompt Bots
*BombBomb::PromptsApi* | [**get_prompt_campaigns**](docs/PromptsApi.md#get_prompt_campaigns) | **GET** /prompts/campaigns | List Prompt Campaigns
*BombBomb::PromptsApi* | [**get_video_email_prompt**](docs/PromptsApi.md#get_video_email_prompt) | **GET** /prompt/{id} | Gets a prompt
*BombBomb::PromptsApi* | [**get_video_email_prompts**](docs/PromptsApi.md#get_video_email_prompts) | **GET** /prompt/ | List prompts
*BombBomb::PromptsApi* | [**respond_to_video_email_prompt**](docs/PromptsApi.md#respond_to_video_email_prompt) | **POST** /prompt/{id}/response | Respond to a prompt
*BombBomb::PromptsApi* | [**update_prompt_bot**](docs/PromptsApi.md#update_prompt_bot) | **PUT** /prompts/bots/{id} | Update Prompt Bot
*BombBomb::PromptsApi* | [**update_prompt_campaign**](docs/PromptsApi.md#update_prompt_campaign) | **PUT** /prompts/campaigns/{id} | Update Prompt Campaign
*BombBomb::SocialsApi* | [**get_social_article_properties**](docs/SocialsApi.md#get_social_article_properties) | **GET** /socials/properties | Gets the social email properties
*BombBomb::SocialsApi* | [**get_social_auto_shares**](docs/SocialsApi.md#get_social_auto_shares) | **GET** /socials/shares | Gets the auto shares from the client group assoc id
*BombBomb::SocialsApi* | [**get_social_permissions**](docs/SocialsApi.md#get_social_permissions) | **GET** /socials/permissions | Get permissions for social integration
*BombBomb::SocialsApi* | [**get_social_status**](docs/SocialsApi.md#get_social_status) | **GET** /socials/states | Gets the social state
*BombBomb::SocialsApi* | [**update_social_auto_shares**](docs/SocialsApi.md#update_social_auto_shares) | **PUT** /socials/shares | Gets the auto shares from the client group assoc id
*BombBomb::SocialsApi* | [**update_social_message**](docs/SocialsApi.md#update_social_message) | **PUT** /socials/message | Sets the users social message to what they typed in
*BombBomb::SocialsApi* | [**update_social_status**](docs/SocialsApi.md#update_social_status) | **PUT** /socials/state | Updates the social state for the object
*BombBomb::TeamsApi* | [**add_team_member**](docs/TeamsApi.md#add_team_member) | **POST** /team/{teamId}/member | Add Member to Team
*BombBomb::TeamsApi* | [**cancel_jericho_send**](docs/TeamsApi.md#cancel_jericho_send) | **DELETE** /team/{teamId}/jericho/{jerichoId} | Cancel a Jericho Send
*BombBomb::TeamsApi* | [**create_subteam**](docs/TeamsApi.md#create_subteam) | **POST** /team/{teamId}/subteam | Add a Subteam
*BombBomb::TeamsApi* | [**delete_subteam**](docs/TeamsApi.md#delete_subteam) | **DELETE** /team/{teamId}/subteam | Delete Subteam
*BombBomb::TeamsApi* | [**get_all_client_group_associations**](docs/TeamsApi.md#get_all_client_group_associations) | **GET** /team/associations/ | Lists team associations
*BombBomb::TeamsApi* | [**get_client_group_assets**](docs/TeamsApi.md#get_client_group_assets) | **GET** /team/assets/ | Lists team assets
*BombBomb::TeamsApi* | [**get_jericho_sends**](docs/TeamsApi.md#get_jericho_sends) | **GET** /team/{teamId}/jericho | List Jericho Sends
*BombBomb::TeamsApi* | [**get_jericho_stats**](docs/TeamsApi.md#get_jericho_stats) | **GET** /team/{teamId}/jericho/{jerichoId}/performance | Gets Jericho performance statistics
*BombBomb::TeamsApi* | [**get_subteams**](docs/TeamsApi.md#get_subteams) | **GET** /team/{teamId}/subteam | List Subteams
*BombBomb::TeamsApi* | [**queue_jericho_send**](docs/TeamsApi.md#queue_jericho_send) | **POST** /team/{teamId}/jericho | Creates a Jericho send.
*BombBomb::TeamsApi* | [**remove_member_from_team**](docs/TeamsApi.md#remove_member_from_team) | **DELETE** /team/{teamId}/member/{userId} | Remove Member from Team
*BombBomb::TeamsApi* | [**update_jericho_prompt_send**](docs/TeamsApi.md#update_jericho_prompt_send) | **PUT** /team/{teamId}/jericho/{jerichoId} | Updates the Jericho Prompt Settings
*BombBomb::TeamsApi* | [**update_team**](docs/TeamsApi.md#update_team) | **POST** /team/{teamId} | Update a team
*BombBomb::TeamsApi* | [**update_team_member**](docs/TeamsApi.md#update_team_member) | **PUT** /team/{teamId}/member | Update Member of Team
*BombBomb::UtilitiesApi* | [**create_o_auth_client**](docs/UtilitiesApi.md#create_o_auth_client) | **POST** /oauthclient | Create an OAuth Client
*BombBomb::UtilitiesApi* | [**delete_o_auth_client**](docs/UtilitiesApi.md#delete_o_auth_client) | **DELETE** /oauthclient/{id} | Delete an OAuth Client
*BombBomb::UtilitiesApi* | [**get_o_auth_clients**](docs/UtilitiesApi.md#get_o_auth_clients) | **GET** /oauthclient | Lists OAuth Clients
*BombBomb::UtilitiesApi* | [**get_spec**](docs/UtilitiesApi.md#get_spec) | **GET** /spec | Describes this api
*BombBomb::VideosApi* | [**get_video_encoding_status**](docs/VideosApi.md#get_video_encoding_status) | **GET** /videos/{videoId}/status | Video Encoding Status
*BombBomb::VideosApi* | [**get_video_recorder**](docs/VideosApi.md#get_video_recorder) | **GET** /videos/live/getRecorder | Get Live Video Recorder HTML
*BombBomb::VideosApi* | [**mark_live_recording_complete**](docs/VideosApi.md#mark_live_recording_complete) | **POST** /videos/live/markComplete | Completes a live recording
*BombBomb::VideosApi* | [**sign_upload**](docs/VideosApi.md#sign_upload) | **POST** /video/signedUpload | Generate Signed Url
*BombBomb::WebhooksApi* | [**add_web_hook**](docs/WebhooksApi.md#add_web_hook) | **POST** /webhook | Add Webhook
*BombBomb::WebhooksApi* | [**delete_web_hook**](docs/WebhooksApi.md#delete_web_hook) | **DELETE** /webhook/{hookId} | Deletes Webhook
*BombBomb::WebhooksApi* | [**get_web_hooks**](docs/WebhooksApi.md#get_web_hooks) | **GET** /webhook/ | Lists Webhooks
*BombBomb::WebhooksApi* | [**list_web_hook_events**](docs/WebhooksApi.md#list_web_hook_events) | **GET** /webhook/events | Describe WebHook Events
*BombBomb::WebhooksApi* | [**send_webhook_example**](docs/WebhooksApi.md#send_webhook_example) | **POST** /webhook/test | Sends test Webhook


## Documentation for Models

 - [BombBomb::BBWebHook](docs/BBWebHook.md)
 - [BombBomb::Curriculum](docs/Curriculum.md)
 - [BombBomb::CurriculumUserProgress](docs/CurriculumUserProgress.md)
 - [BombBomb::CurriculumWithProgress](docs/CurriculumWithProgress.md)
 - [BombBomb::InlineResponse200](docs/InlineResponse200.md)
 - [BombBomb::InlineResponse200Items](docs/InlineResponse200Items.md)
 - [BombBomb::JerichoConfiguration](docs/JerichoConfiguration.md)
 - [BombBomb::JerichoPerformance](docs/JerichoPerformance.md)
 - [BombBomb::OAuthClient](docs/OAuthClient.md)
 - [BombBomb::PromptBot](docs/PromptBot.md)
 - [BombBomb::SignUploadRequest](docs/SignUploadRequest.md)
 - [BombBomb::SignUploadResponse](docs/SignUploadResponse.md)
 - [BombBomb::String](docs/String.md)
 - [BombBomb::TeamPublicRepresentation](docs/TeamPublicRepresentation.md)
 - [BombBomb::VideoEmailPrompt](docs/VideoEmailPrompt.md)
 - [BombBomb::VideoEncodingStatusResponse](docs/VideoEncodingStatusResponse.md)
 - [BombBomb::VideoPublicRepresentation](docs/VideoPublicRepresentation.md)
 - [BombBomb::VideoRecorderMethodResponse](docs/VideoRecorderMethodResponse.md)


## Documentation for Authorization


### BBOAuth2

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: https://app.bombbomb.com/auth/authorize
- **Scopes**: 
  - all:manage: Manage All
  - all:read: Read All
  - email:manage: Manage Email
  - email:read: Read Email
  - video:manage: Manage Video
  - video:read: Read Video
  - contact:manage: Manage Contact
  - contact:read: Read Contact
  - curriculum:manage: Manage Curriculum
  - curriculum:read: Read Curriculum
  - automation:manage: Manage Automation
  - automation:read: Read Automation
  - form:manage: Manage Form
  - form:read: Read Form
  - team:manage: Manage Team
  - team:read: Read Team
  - order:manage: Manage Order
  - settings:manage: Manage Settings
  - file:manage: Manage File
  - account:manage: Manage Account
  - account:read: Read Account

