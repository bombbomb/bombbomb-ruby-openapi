# BombBomb::SocialsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_facebook_pages**](SocialsApi.md#get_facebook_pages) | **GET** /socials/facebook/pages | Gets facebook pages
[**get_social_article_properties**](SocialsApi.md#get_social_article_properties) | **GET** /socials/properties | Gets the social email properties
[**get_social_authorizations**](SocialsApi.md#get_social_authorizations) | **GET** /socials/authorizations | Get authorizations for all social integration
[**get_social_profile_properties**](SocialsApi.md#get_social_profile_properties) | **GET** /socials/profile | Gets the profile properties
[**get_social_stats**](SocialsApi.md#get_social_stats) | **GET** /socials/{promptId}/stats | Get social stats for a prompt
[**post_social_content**](SocialsApi.md#post_social_content) | **POST** /socials/content | Creates social content
[**update_client_group_send_mechanism**](SocialsApi.md#update_client_group_send_mechanism) | **PUT** /socials/client/sendMechanism | Gets the auto shares from the client group assoc id
[**update_facebook_pages**](SocialsApi.md#update_facebook_pages) | **PUT** /socials/facebook/pages | Updates facebook page Ids
[**update_social_content**](SocialsApi.md#update_social_content) | **PUT** /socials/content | Updates social content


# **get_facebook_pages**
> get_facebook_pages

Gets facebook pages

Gets facebook pages by client id

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

begin
  #Gets facebook pages
  api_instance.get_facebook_pages
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_facebook_pages: #{e}"
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



# **get_social_article_properties**
> get_social_article_properties(email_id)

Gets the social email properties

Gets the social email properties

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

email_id = "email_id_example" # String | This is the email Id for the email url


begin
  #Gets the social email properties
  api_instance.get_social_article_properties(email_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_article_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**| This is the email Id for the email url | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_social_authorizations**
> get_social_authorizations(opts)

Get authorizations for all social integration

Get authorizations and autoshares for all social integration and has redirect for user to login

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

opts = { 
  client_group_id: "client_group_id_example" # String | ID of the client group association
}

begin
  #Get authorizations for all social integration
  api_instance.get_social_authorizations(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_authorizations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_group_id** | **String**| ID of the client group association | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_social_profile_properties**
> get_social_profile_properties(social_type)

Gets the profile properties

Gets the social profile properties

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

social_type = "social_type_example" # String | The social type


begin
  #Gets the profile properties
  api_instance.get_social_profile_properties(social_type)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_profile_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **social_type** | **String**| The social type | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_social_stats**
> get_social_stats(prompt_id)

Get social stats for a prompt

Get social stats for a prompt by id

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

prompt_id = "prompt_id_example" # String | ID of the prompt


begin
  #Get social stats for a prompt
  api_instance.get_social_stats(prompt_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompt_id** | **String**| ID of the prompt | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **post_social_content**
> post_social_content(email_id)

Creates social content

Creates social content for an email

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

email_id = "email_id_example" # String | The email's id


begin
  #Creates social content
  api_instance.post_social_content(email_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->post_social_content: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**| The email&#39;s id | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_client_group_send_mechanism**
> update_client_group_send_mechanism(send_mechanism, client_group_id, opts)

Gets the auto shares from the client group assoc id

Gets the auto shares from the client group assoc id

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

send_mechanism = "send_mechanism_example" # String | The send mechanism for the prompt

client_group_id = "client_group_id_example" # String | ID of the client group association

opts = { 
  enabled: "enabled_example" # String | Is the send mechanism enabled?
}

begin
  #Gets the auto shares from the client group assoc id
  api_instance.update_client_group_send_mechanism(send_mechanism, client_group_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->update_client_group_send_mechanism: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_mechanism** | **String**| The send mechanism for the prompt | 
 **client_group_id** | **String**| ID of the client group association | 
 **enabled** | **String**| Is the send mechanism enabled? | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_facebook_pages**
> update_facebook_pages(page_ids)

Updates facebook page Ids

Updates facebook page Ids to be sent to for prompts

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

page_ids = "page_ids_example" # String | Page Ids for the prompt


begin
  #Updates facebook page Ids
  api_instance.update_facebook_pages(page_ids)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->update_facebook_pages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_ids** | **String**| Page Ids for the prompt | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_social_content**
> update_social_content(social_id, opts)

Updates social content

Updates social content for an email

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::SocialsApi.new

social_id = "social_id_example" # String | The social id

opts = { 
  title: "title_example", # String | The title for the article
  description: "description_example", # String | The article description
  picture_url: "picture_url_example", # String | The article picture url
  suggested_message: "suggested_message_example" # String | The suggested message to use
}

begin
  #Updates social content
  api_instance.update_social_content(social_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->update_social_content: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **social_id** | **String**| The social id | 
 **title** | **String**| The title for the article | [optional] 
 **description** | **String**| The article description | [optional] 
 **picture_url** | **String**| The article picture url | [optional] 
 **suggested_message** | **String**| The suggested message to use | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



