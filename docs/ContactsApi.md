# BombBomb::ContactsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_contacts**](ContactsApi.md#delete_contacts) | **PUT** /contacts/delete | Delete Contacts


# **delete_contacts**
> delete_contacts(list_id)

Delete Contacts

Delete contacts

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

list_id = "list_id_example" # String | The list of contacts to be deleted.


begin
  #Delete Contacts
  api_instance.delete_contacts(list_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->delete_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| The list of contacts to be deleted. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



