# BombBomb::ListsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_list**](ListsApi.md#clear_list) | **PUT** /lists/{listId}/clear | Clear Contacts from List
[**copy_list_contacts**](ListsApi.md#copy_list_contacts) | **POST** /lists/{listId}/copy | Copy All Contacts from a List
[**suppress_all_in_list**](ListsApi.md#suppress_all_in_list) | **PUT** /lists/{listId}/suppress | Suppress All Contacts from List


# **clear_list**
> clear_list(list_id)

Clear Contacts from List

Clears all contacts from a list.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ListsApi.new

list_id = "list_id_example" # String | The list to be cleared.


begin
  #Clear Contacts from List
  api_instance.clear_list(list_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling ListsApi->clear_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| The list to be cleared. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **copy_list_contacts**
> copy_list_contacts(from_list_id, list_id)

Copy All Contacts from a List

Copy all contacts from a list.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ListsApi.new

from_list_id = "from_list_id_example" # String | The list to be cleared.

list_id = "list_id_example" # String | The list to be cleared.


begin
  #Copy All Contacts from a List
  api_instance.copy_list_contacts(from_list_id, list_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling ListsApi->copy_list_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from_list_id** | **String**| The list to be cleared. | 
 **list_id** | **String**| The list to be cleared. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **suppress_all_in_list**
> suppress_all_in_list(list_id)

Suppress All Contacts from List

Suppresses all contacts in a list.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ListsApi.new

list_id = "list_id_example" # String | The list to be cleared.


begin
  #Suppress All Contacts from List
  api_instance.suppress_all_in_list(list_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling ListsApi->suppress_all_in_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| The list to be cleared. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



