# BombBomb::FilesApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**doc_host_delete**](FilesApi.md#doc_host_delete) | **DELETE** /files | Deletes users file


# **doc_host_delete**
> doc_host_delete(doc_id)

Deletes users file

Deletes the file from the users s3 store

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FilesApi.new

doc_id = "doc_id_example" # String | Id of document


begin
  #Deletes users file
  api_instance.doc_host_delete(doc_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling FilesApi->doc_host_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doc_id** | **String**| Id of document | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



