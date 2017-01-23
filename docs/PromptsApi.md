# BombBomb::PromptsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_prompt_bot**](PromptsApi.md#create_prompt_bot) | **POST** /prompts/bots | Create a running Prompt Bot for a list
[**create_video_email_prompt**](PromptsApi.md#create_video_email_prompt) | **POST** /prompt | Prompts user to send a video
[**get_pending_video_email_prompts**](PromptsApi.md#get_pending_video_email_prompts) | **GET** /prompt/pending | List pending prompts
[**get_prompt_bots**](PromptsApi.md#get_prompt_bots) | **GET** /prompts/bots | List Prompt Bots
[**get_prompt_campaigns**](PromptsApi.md#get_prompt_campaigns) | **GET** /prompts/campaigns | List Prompt Campaigns
[**get_video_email_prompt**](PromptsApi.md#get_video_email_prompt) | **GET** /prompt/{id} | Gets a prompt
[**get_video_email_prompts**](PromptsApi.md#get_video_email_prompts) | **GET** /prompt/ | List prompts
[**respond_to_video_email_prompt**](PromptsApi.md#respond_to_video_email_prompt) | **POST** /prompt/{id}/response | Respond to a prompt
[**update_prompt_bot**](PromptsApi.md#update_prompt_bot) | **PUT** /prompts/bots/{id} | Update Prompt Bot
[**update_prompt_campaign**](PromptsApi.md#update_prompt_campaign) | **PUT** /prompts/campaigns/{id} | Update Prompt Campaign


# **create_prompt_bot**
> PromptBotBot create_prompt_bot(list_id, email_id, end_date, prompt_subject, prompt_body, bot_type_id, template_id)

Create a running Prompt Bot for a list

Creates a Prompt Bot that sends emails to contacts on a list over the span of time defined.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

list_id = "list_id_example" # String | The list id to attach the bot to.

email_id = "email_id_example" # String | The default email to use.

end_date = "end_date_example" # String | The time frame to complete sending to the list.

prompt_subject = "prompt_subject_example" # String | The prompt subject.

prompt_body = "prompt_body_example" # String | The prompt script.

bot_type_id = "bot_type_id_example" # String | The type of bot to create.

template_id = "template_id_example" # String | The template used to create the email id.


begin
  #Create a running Prompt Bot for a list
  result = api_instance.create_prompt_bot(list_id, email_id, end_date, prompt_subject, prompt_body, bot_type_id, template_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->create_prompt_bot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| The list id to attach the bot to. | 
 **email_id** | **String**| The default email to use. | 
 **end_date** | **String**| The time frame to complete sending to the list. | 
 **prompt_subject** | **String**| The prompt subject. | 
 **prompt_body** | **String**| The prompt script. | 
 **bot_type_id** | **String**| The type of bot to create. | 
 **template_id** | **String**| The template used to create the email id. | 

### Return type

[**PromptBotBot**](PromptBotBot.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **create_video_email_prompt**
> VideoEmailPrompt create_video_email_prompt(prompt)

Prompts user to send a video

Sends the account holder an email prompting them to add a video to a scheduled outgoing message. Recipients, content and timing is all preset for the user.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompt** | [**VideoEmailPrompt**](VideoEmailPrompt.md)| The Video Email Prompt to be created | 

### Return type

[**VideoEmailPrompt**](VideoEmailPrompt.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_pending_video_email_prompts**
> Array&lt;VideoEmailPrompt&gt; get_pending_video_email_prompts

List pending prompts

Returns a list of prompts that have not been sent yet, and can still be customized.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

begin
  #List pending prompts
  result = api_instance.get_pending_video_email_prompts
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->get_pending_video_email_prompts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VideoEmailPrompt&gt;**](VideoEmailPrompt.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_prompt_bots**
> Array&lt;PromptBotBot&gt; get_prompt_bots

List Prompt Bots

Returns a list of all Prompt Bots for the user.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

begin
  #List Prompt Bots
  result = api_instance.get_prompt_bots
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->get_prompt_bots: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PromptBotBot&gt;**](PromptBotBot.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_prompt_campaigns**
> get_prompt_campaigns

List Prompt Campaigns

Returns a list of all Prompt Campaigns for the user.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

begin
  #List Prompt Campaigns
  api_instance.get_prompt_campaigns
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->get_prompt_campaigns: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_video_email_prompt**
> VideoEmailPrompt get_video_email_prompt(id)

Gets a prompt

Gets a prompt

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

id = "id_example" # String | The Id of the prompt


begin
  #Gets a prompt
  result = api_instance.get_video_email_prompt(id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->get_video_email_prompt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The Id of the prompt | 

### Return type

[**VideoEmailPrompt**](VideoEmailPrompt.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_video_email_prompts**
> Array&lt;VideoEmailPrompt&gt; get_video_email_prompts

List prompts

Returns a list of all prompts.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

begin
  #List prompts
  result = api_instance.get_video_email_prompts
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->get_video_email_prompts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VideoEmailPrompt&gt;**](VideoEmailPrompt.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **respond_to_video_email_prompt**
> VideoEmailPrompt respond_to_video_email_prompt(id, choice, opts)

Respond to a prompt

Respond to a prompt by either adding a video, sending without a video or cancelling the prompt.

### Example
```ruby
# load the gem
require 'bombbomb'

api_instance = BombBomb::PromptsApi.new

id = "id_example" # String | The id of the prompt.

choice = "choice_example" # String | The users' selection. Can be: WithVideo, WithEmail, Cancel

opts = { 
  video_id: "video_id_example", # String | The id of the video.
  email_id: "email_id_example" # String | The id of the video.
}

begin
  #Respond to a prompt
  result = api_instance.respond_to_video_email_prompt(id, choice, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->respond_to_video_email_prompt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the prompt. | 
 **choice** | **String**| The users&#39; selection. Can be: WithVideo, WithEmail, Cancel | 
 **video_id** | **String**| The id of the video. | [optional] 
 **email_id** | **String**| The id of the video. | [optional] 

### Return type

[**VideoEmailPrompt**](VideoEmailPrompt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_prompt_bot**
> PromptBotBot update_prompt_bot(id, opts)

Update Prompt Bot

Updates a Prompt Bot's settings.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

id = "id_example" # String | The bot id.

opts = { 
  email_id: "email_id_example", # String | The default email to use.
  end_date: "end_date_example", # String | The time frame to complete sending to the list.
  status: "status_example" # String | The status of the bot.
}

begin
  #Update Prompt Bot
  result = api_instance.update_prompt_bot(id, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->update_prompt_bot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The bot id. | 
 **email_id** | **String**| The default email to use. | [optional] 
 **end_date** | **String**| The time frame to complete sending to the list. | [optional] 
 **status** | **String**| The status of the bot. | [optional] 

### Return type

[**PromptBotBot**](PromptBotBot.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_prompt_campaign**
> update_prompt_campaign(client_group_id, opts)

Update Prompt Campaign

Updates a Prompt Campaign's Settings

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::PromptsApi.new

client_group_id = "client_group_id_example" # String | The client group of the campaign.

opts = { 
  branded_template_id: "branded_template_id_example", # String | The template to use for branded feel emails.
  personal_template_id: "personal_template_id_example", # String | The template to use for personal feel emails.
  enabled: true # BOOLEAN | Set whether the user is able to start receiving prompts.
}

begin
  #Update Prompt Campaign
  api_instance.update_prompt_campaign(client_group_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling PromptsApi->update_prompt_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_group_id** | **String**| The client group of the campaign. | 
 **branded_template_id** | **String**| The template to use for branded feel emails. | [optional] 
 **personal_template_id** | **String**| The template to use for personal feel emails. | [optional] 
 **enabled** | **BOOLEAN**| Set whether the user is able to start receiving prompts. | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



