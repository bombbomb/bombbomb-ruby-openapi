# BombBomb::UtilitiesApi

All URIs are relative to *https://dev.api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_o_auth_client**](UtilitiesApi.md#create_o_auth_client) | **POST** /oauthclient | Create an OAuth Client
[**delete_o_auth_client**](UtilitiesApi.md#delete_o_auth_client) | **DELETE** /oauthclient/{id} | Delete an OAuth Client
[**get_o_auth_clients**](UtilitiesApi.md#get_o_auth_clients) | **GET** /oauthclient | Lists OAuth Clients
[**get_spec**](UtilitiesApi.md#get_spec) | **GET** /spec | Describes this api


# **create_o_auth_client**
> OAuthClient create_o_auth_client(name, redirect_uri)

Create an OAuth Client

Creates an OAuth Client managed by the user

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::UtilitiesApi.new

name = "name_example" # String | The name of the OAuth client. e.g. MyCrm DEV, or MyCrm PROD

redirect_uri = "redirect_uri_example" # String | The URI to direct the client to after logging in.


begin
  #Create an OAuth Client
  result = api_instance.create_o_auth_client(name, redirect_uri)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling UtilitiesApi->create_o_auth_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the OAuth client. e.g. MyCrm DEV, or MyCrm PROD | 
 **redirect_uri** | **String**| The URI to direct the client to after logging in. | 

### Return type

[**OAuthClient**](OAuthClient.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_o_auth_client**
> delete_o_auth_client(id)

Delete an OAuth Client

Deletes an OAuth Client managed by the user

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::UtilitiesApi.new

id = "id_example" # String | The id of the OAuth Client


begin
  #Delete an OAuth Client
  api_instance.delete_o_auth_client(id)
rescue BombBomb::ApiError => e
  puts "Exception when calling UtilitiesApi->delete_o_auth_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the OAuth Client | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_o_auth_clients**
> Array&lt;OAuthClient&gt; get_o_auth_clients

Lists OAuth Clients

Enumerates OAuth Clients managed by the user

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::UtilitiesApi.new

begin
  #Lists OAuth Clients
  result = api_instance.get_o_auth_clients
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling UtilitiesApi->get_o_auth_clients: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;OAuthClient&gt;**](OAuthClient.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_spec**
> get_spec

Describes this api

Describes methods available through the API.

### Example
```ruby
# load the gem
require 'bombbomb'

api_instance = BombBomb::UtilitiesApi.new

begin
  #Describes this api
  api_instance.get_spec
rescue BombBomb::ApiError => e
  puts "Exception when calling UtilitiesApi->get_spec: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



