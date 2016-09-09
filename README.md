# bombbomb

BombBomb - the Ruby gem for the BombBomb

We make it easy to build relationships using simple videos.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.20679
- Package version: 2.0.20679
- Build date: 2016-09-09T02:57:39.252Z
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bombbomb.gemspec
```

Then either install the gem locally:

```shell
gem install ./bombbomb-2.0.20679.gem
```
(for development, run `gem install --dev ./bombbomb-2.0.20679.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bombbomb', '~> 2.0.20679'

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

# Setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

prompt = BombBomb::VideoEmailPrompt.new # VideoEmailPrompt | The Video Email Prompt to be created


begin
  #Prompts user to send a video
  result = api_instance.create_video_email_prompt(prompt)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->create_video_email_prompt: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.bombbomb.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BombBomb::PromptsApi* | [**create_video_email_prompt**](docs/PromptsApi.md#create_video_email_prompt) | **POST** /prompt | Prompts user to send a video
*BombBomb::PromptsApi* | [**get_video_email_prompt**](docs/PromptsApi.md#get_video_email_prompt) | **GET** /prompt/{id} | Gets a prompt
*BombBomb::PromptsApi* | [**respond_to_video_email_prompt**](docs/PromptsApi.md#respond_to_video_email_prompt) | **POST** /prompt/{id}/response | Respond to a prompt
*BombBomb::TeamsApi* | [**cancel_jericho_send**](docs/TeamsApi.md#cancel_jericho_send) | **DELETE** /team/{teamId}/jericho/{jerichoId} | Cancel a Jericho Send
*BombBomb::TeamsApi* | [**get_client_group_assets**](docs/TeamsApi.md#get_client_group_assets) | **GET** /team/assets/ | Lists team assets
*BombBomb::TeamsApi* | [**get_jericho_sends**](docs/TeamsApi.md#get_jericho_sends) | **GET** /team/{teamId}/jericho | List Jericho Sends
*BombBomb::TeamsApi* | [**get_jericho_stats**](docs/TeamsApi.md#get_jericho_stats) | **GET** /team/{teamId}/jericho/{jerichoId}/performance | Gets Jericho performance statistics
*BombBomb::TeamsApi* | [**queue_jericho_send**](docs/TeamsApi.md#queue_jericho_send) | **POST** /team/{teamId}/jericho | Creates a Jericho send.
*BombBomb::UtilitiesApi* | [**create_o_auth_client**](docs/UtilitiesApi.md#create_o_auth_client) | **POST** /oauthclient | Create an OAuth Client
*BombBomb::UtilitiesApi* | [**delete_o_auth_client**](docs/UtilitiesApi.md#delete_o_auth_client) | **DELETE** /oauthclient/{id} | Delete an OAuth Client
*BombBomb::UtilitiesApi* | [**get_o_auth_clients**](docs/UtilitiesApi.md#get_o_auth_clients) | **GET** /oauthclient | Lists OAuth Clients
*BombBomb::UtilitiesApi* | [**get_spec**](docs/UtilitiesApi.md#get_spec) | **GET** /spec | Describes this api
*BombBomb::WebhooksApi* | [**add_web_hook**](docs/WebhooksApi.md#add_web_hook) | **POST** /webhook | Add Webhook
*BombBomb::WebhooksApi* | [**delete_web_hook**](docs/WebhooksApi.md#delete_web_hook) | **DELETE** /webhook/{hookId} | Deletes Webhook
*BombBomb::WebhooksApi* | [**get_web_hooks**](docs/WebhooksApi.md#get_web_hooks) | **GET** /webhook/ | Lists Webhooks
*BombBomb::WebhooksApi* | [**send_webhook_example**](docs/WebhooksApi.md#send_webhook_example) | **POST** /webhook/test | Sends test Webhook


## Documentation for Models

 - [BombBomb::BBWebHook](docs/BBWebHook.md)
 - [BombBomb::InlineResponse200](docs/InlineResponse200.md)
 - [BombBomb::InlineResponse200Items](docs/InlineResponse200Items.md)
 - [BombBomb::JerichoConfiguration](docs/JerichoConfiguration.md)
 - [BombBomb::JerichoPerformance](docs/JerichoPerformance.md)
 - [BombBomb::OAuthClient](docs/OAuthClient.md)
 - [BombBomb::String](docs/String.md)
 - [BombBomb::VideoEmailPrompt](docs/VideoEmailPrompt.md)


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
  - automation:manage: Manage Automation
  - automation:read: Read Automation
  - form:manage: Manage Form
  - form:read: Read Form
  - team:manage: Manage Team
  - team:read: Read Team
  - settings:manage: Manage Settings

