# BombBomb::SocialsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_social_article_properties**](SocialsApi.md#get_social_article_properties) | **GET** /socials/properties | Gets the social email properties
[**get_social_auto_shares**](SocialsApi.md#get_social_auto_shares) | **GET** /socials/shares | Gets the auto shares from the client group assoc id
[**get_social_permissions**](SocialsApi.md#get_social_permissions) | **GET** /socials/permissions | Get permissions for social integration
[**get_social_status**](SocialsApi.md#get_social_status) | **GET** /socials/states | Gets the social state
[**update_social_auto_shares**](SocialsApi.md#update_social_auto_shares) | **PUT** /socials/shares | Gets the auto shares from the client group assoc id
[**update_social_message**](SocialsApi.md#update_social_message) | **PUT** /socials/message | Sets the users social message to what they typed in
[**update_social_status**](SocialsApi.md#update_social_status) | **PUT** /socials/state | Updates the social state for the object


# **get_social_article_properties**
> get_social_article_properties(jericho_id, email_id, originator_id)

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

jericho_id = "jericho_id_example" # String | associated jericho Id

email_id = "email_id_example" # String | This is the email Id for the email url

originator_id = "originator_id_example" # String | This is the originator Id


begin
  #Gets the social email properties
  api_instance.get_social_article_properties(jericho_id, email_id, originator_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_article_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jericho_id** | **String**| associated jericho Id | 
 **email_id** | **String**| This is the email Id for the email url | 
 **originator_id** | **String**| This is the originator Id | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_social_auto_shares**
> get_social_auto_shares(client_group_id)

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

client_group_id = "client_group_id_example" # String | ID of the client group association


begin
  #Gets the auto shares from the client group assoc id
  api_instance.get_social_auto_shares(client_group_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_auto_shares: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_group_id** | **String**| ID of the client group association | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_social_permissions**
> get_social_permissions(social_type)

Get permissions for social integration

Get permissions for social integration and has redirect for user to login

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

social_type = "social_type_example" # String | Type of social integration


begin
  #Get permissions for social integration
  api_instance.get_social_permissions(social_type)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **social_type** | **String**| Type of social integration | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_social_status**
> get_social_status(originator_id)

Gets the social state

Gets the social state

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

originator_id = "originator_id_example" # String | associated originatorId


begin
  #Gets the social state
  api_instance.get_social_status(originator_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->get_social_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **originator_id** | **String**| associated originatorId | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_social_auto_shares**
> update_social_auto_shares(auto_share, client_group_id)

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

auto_share = "auto_share_example" # String | The social share that will auto share to

client_group_id = "client_group_id_example" # String | ID of the client group association


begin
  #Gets the auto shares from the client group assoc id
  api_instance.update_social_auto_shares(auto_share, client_group_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->update_social_auto_shares: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto_share** | **String**| The social share that will auto share to | 
 **client_group_id** | **String**| ID of the client group association | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_social_message**
> update_social_message(message, originator_id)

Sets the users social message to what they typed in

Sets the users social message to what they typed in

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

message = "message_example" # String | The social message the user typed in

originator_id = "originator_id_example" # String | The parent id tied to the social share


begin
  #Sets the users social message to what they typed in
  api_instance.update_social_message(message, originator_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->update_social_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message** | **String**| The social message the user typed in | 
 **originator_id** | **String**| The parent id tied to the social share | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_social_status**
> update_social_status(state, originator_id)

Updates the social state for the object

Updates the social state for the object

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

state = "state_example" # String | The state to set to

originator_id = "originator_id_example" # String | The parent id tied to the social share


begin
  #Updates the social state for the object
  api_instance.update_social_status(state, originator_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling SocialsApi->update_social_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The state to set to | 
 **originator_id** | **String**| The parent id tied to the social share | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



