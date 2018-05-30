# BombBomb::FormsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_form_tracking_as_csv**](FormsApi.md#get_form_tracking_as_csv) | **GET** /forms/{id}/tracking/export | Get csv


# **get_form_tracking_as_csv**
> get_form_tracking_as_csv(id)

Get csv

Get form tracking as csv

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FormsApi.new

id = "id_example" # String | Id of the form


begin
  #Get csv
  api_instance.get_form_tracking_as_csv(id)
rescue BombBomb::ApiError => e
  puts "Exception when calling FormsApi->get_form_tracking_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id of the form | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



