# BombBomb::AutomationsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_drip_drop_stats**](AutomationsApi.md#get_drip_drop_stats) | **GET** /automation/{dripId}/dripdrop/{dripDropId}/stats | Get Automation Email Stats
[**get_drip_stats**](AutomationsApi.md#get_drip_stats) | **GET** /automation/{id}/stats | Get Automation Stats
[**get_scheduling_status**](AutomationsApi.md#get_scheduling_status) | **GET** /automation/{id}/scheduling/status | Get the number of pending scheduling calculations


# **get_drip_drop_stats**
> get_drip_drop_stats(drip_id, drip_drop_id)

Get Automation Email Stats

Get Automation Email Stats

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AutomationsApi.new

drip_id = "drip_id_example" # String | The id of the drip

drip_drop_id = "drip_drop_id_example" # String | The id of the drip drop


begin
  #Get Automation Email Stats
  api_instance.get_drip_drop_stats(drip_id, drip_drop_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling AutomationsApi->get_drip_drop_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **drip_id** | **String**| The id of the drip | 
 **drip_drop_id** | **String**| The id of the drip drop | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_drip_stats**
> get_drip_stats(id)

Get Automation Stats

Get Automation Stats

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AutomationsApi.new

id = "id_example" # String | The id of the automation


begin
  #Get Automation Stats
  api_instance.get_drip_stats(id)
rescue BombBomb::ApiError => e
  puts "Exception when calling AutomationsApi->get_drip_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the automation | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_scheduling_status**
> get_scheduling_status(id)

Get the number of pending scheduling calculations

Get the number of pending scheduling calculations

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AutomationsApi.new

id = "id_example" # String | The id of the automation


begin
  #Get the number of pending scheduling calculations
  api_instance.get_scheduling_status(id)
rescue BombBomb::ApiError => e
  puts "Exception when calling AutomationsApi->get_scheduling_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the automation | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



