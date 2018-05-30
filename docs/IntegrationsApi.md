# BombBomb::IntegrationsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect_integration**](IntegrationsApi.md#connect_integration) | **POST** /integrations | Activate an integration for a user.
[**delete_integration**](IntegrationsApi.md#delete_integration) | **DELETE** /integrations | Remove an integration for a user.
[**get_integration_health**](IntegrationsApi.md#get_integration_health) | **GET** /integrations/health/{code} | Get health for a given integration
[**get_integration_page_components**](IntegrationsApi.md#get_integration_page_components) | **GET** /integrations/pageComponents | Get page components for a given integration
[**sync_users_integrated_lists**](IntegrationsApi.md#sync_users_integrated_lists) | **GET** /integrations/sync | Synchronize your integration list or lists.


# **connect_integration**
> connect_integration(code, opts)

Activate an integration for a user.

Provide the correct parameters to enable an integration. Required Parameters vary based on the desired          integration. Integrations requiring OAuth will provide the OAuth link that the user must be presented.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::IntegrationsApi.new

code = "code_example" # String | The identifier of the integration.

opts = { 
  key: "key_example", # String | The key value.
  secret: "secret_example", # String | The secret value.
  token: "token_example", # String | The token value.
  data: "data_example", # String | The data value as JSON.
  overwrite: "overwrite_example" # String | Boolean value to know whether or not to delete the integration if it already exists
}

begin
  #Activate an integration for a user.
  api_instance.connect_integration(code, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling IntegrationsApi->connect_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The identifier of the integration. | 
 **key** | **String**| The key value. | [optional] 
 **secret** | **String**| The secret value. | [optional] 
 **token** | **String**| The token value. | [optional] 
 **data** | **String**| The data value as JSON. | [optional] 
 **overwrite** | **String**| Boolean value to know whether or not to delete the integration if it already exists | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **delete_integration**
> delete_integration(opts)

Remove an integration for a user.

Remove an integration by providing the integration id or integration code. Only provide one of the             parameters.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::IntegrationsApi.new

opts = { 
  id: "id_example", # String | Integration ID
  code: "code_example" # String | Integration Code
}

begin
  #Remove an integration for a user.
  api_instance.delete_integration(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling IntegrationsApi->delete_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration ID | [optional] 
 **code** | **String**| Integration Code | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_integration_health**
> get_integration_health(code)

Get health for a given integration

Get health for an integration.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::IntegrationsApi.new

code = "code_example" # String | The integration code for which to retrieve the information from


begin
  #Get health for a given integration
  api_instance.get_integration_health(code)
rescue BombBomb::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration_health: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The integration code for which to retrieve the information from | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_integration_page_components**
> get_integration_page_components(integration_name)

Get page components for a given integration

Get all page components for an integration.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::IntegrationsApi.new

integration_name = "integration_name_example" # String | The integration for which to retrieve HTML page components.


begin
  #Get page components for a given integration
  api_instance.get_integration_page_components(integration_name)
rescue BombBomb::ApiError => e
  puts "Exception when calling IntegrationsApi->get_integration_page_components: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **String**| The integration for which to retrieve HTML page components. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **sync_users_integrated_lists**
> String sync_users_integrated_lists(opts)

Synchronize your integration list or lists.

Synchronize your integration contact list with the service you are integrated with. If no integration code is provided, all integrations will be synchronized.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::IntegrationsApi.new

opts = { 
  integration_id: "integration_id_example" # String | The integration to sync lists for. All integrations will sync if nothing is provided.
}

begin
  #Synchronize your integration list or lists.
  result = api_instance.sync_users_integrated_lists(opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling IntegrationsApi->sync_users_integrated_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **String**| The integration to sync lists for. All integrations will sync if nothing is provided. | [optional] 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



