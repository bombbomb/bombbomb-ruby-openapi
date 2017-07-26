# BombBomb::OrdersApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**template_asset_delete**](OrdersApi.md#template_asset_delete) | **DELETE** /orders/templates/images | Deletes image from user s3 store


# **template_asset_delete**
> template_asset_delete(file_name)

Deletes image from user s3 store

Deletes image from user s3 store

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::OrdersApi.new

file_name = "file_name_example" # String | Filename for deletion


begin
  #Deletes image from user s3 store
  api_instance.template_asset_delete(file_name)
rescue BombBomb::ApiError => e
  puts "Exception when calling OrdersApi->template_asset_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Filename for deletion | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



