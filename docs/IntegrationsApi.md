# BombBomb::IntegrationsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sync_users_integrated_lists**](IntegrationsApi.md#sync_users_integrated_lists) | **GET** /integrations/sync | Synchronize your integration list or lists.


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



