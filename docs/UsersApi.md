# BombBomb::UsersApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_client_contact_information**](UsersApi.md#get_client_contact_information) | **GET** /clients/contact/information | Get client contact information.
[**get_user_profile_info**](UsersApi.md#get_user_profile_info) | **GET** /users/profile/information | Get user profile information.


# **get_client_contact_information**
> get_client_contact_information

Get client contact information.

Get the client contact information of the user's account.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::UsersApi.new

begin
  #Get client contact information.
  api_instance.get_client_contact_information
rescue BombBomb::ApiError => e
  puts "Exception when calling UsersApi->get_client_contact_information: #{e}"
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



# **get_user_profile_info**
> get_user_profile_info

Get user profile information.

Get the users profile information.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::UsersApi.new

begin
  #Get user profile information.
  api_instance.get_user_profile_info
rescue BombBomb::ApiError => e
  puts "Exception when calling UsersApi->get_user_profile_info: #{e}"
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



