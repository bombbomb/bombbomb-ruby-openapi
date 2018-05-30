# BombBomb::AccountsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_details**](AccountsApi.md#account_details) | **GET** /accounts | Get account details.
[**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create Account
[**get_client_statistics**](AccountsApi.md#get_client_statistics) | **GET** /accounts/stats | Get Client Statistics
[**get_user_country**](AccountsApi.md#get_user_country) | **GET** /accounts/{clientId}/country | Gets user country
[**reset_api_key**](AccountsApi.md#reset_api_key) | **PUT** /accounts/apikey | Reset API key
[**subscription_purchase_allowed**](AccountsApi.md#subscription_purchase_allowed) | **GET** /accounts/purchaseable | Check if subscription purchase allowed.
[**update_profile_data**](AccountsApi.md#update_profile_data) | **POST** /account/profile/ | Add profile information.


# **account_details**
> account_details

Get account details.

Get the details of the user's account.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

begin
  #Get account details.
  api_instance.account_details
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->account_details: #{e}"
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



# **create_account**
> String create_account(team_id, first_name, last_name, email_address, company_name, phone, opts)

Create Account

Creates a new BombBomb account. This method is currently only available to paid seat admins.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

team_id = "team_id_example" # String | The team id

first_name = "first_name_example" # String | First name of the user.

last_name = "last_name_example" # String | Last name of the user.

email_address = "email_address_example" # String | Email address of the user.

company_name = "company_name_example" # String | Company of the user.

phone = "phone_example" # String | Phone number of the user.

opts = { 
  country: "country_example", # String | Country of the user.
  industry: "industry_example", # String | Industry of the user.
  address: "address_example", # String | Street Address of the user.
  city: "city_example", # String | City of the user.
  postal_code: "postal_code_example", # String | Postal/Zip code of the user.
  prevent_welcome_email: true # BOOLEAN | prevent an email with login credentials from being sent to the new account. must be set to 'true'
}

begin
  #Create Account
  result = api_instance.create_account(team_id, first_name, last_name, email_address, company_name, phone, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->create_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **first_name** | **String**| First name of the user. | 
 **last_name** | **String**| Last name of the user. | 
 **email_address** | **String**| Email address of the user. | 
 **company_name** | **String**| Company of the user. | 
 **phone** | **String**| Phone number of the user. | 
 **country** | **String**| Country of the user. | [optional] 
 **industry** | **String**| Industry of the user. | [optional] 
 **address** | **String**| Street Address of the user. | [optional] 
 **city** | **String**| City of the user. | [optional] 
 **postal_code** | **String**| Postal/Zip code of the user. | [optional] 
 **prevent_welcome_email** | **BOOLEAN**| prevent an email with login credentials from being sent to the new account. must be set to &#39;true&#39; | [optional] 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_client_statistics**
> get_client_statistics(opts)

Get Client Statistics

Gets general statics for a Client

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

opts = { 
  client_id: "client_id_example", # String | Client ID of the account to retrieve. Defaults to yourself.
  refresh: true, # BOOLEAN | Boolean for whether data returned should be from cache or not.
  statistic_values: "statistic_values_example" # String | Array of data that should be returned, used exclusively for cacheless data
}

begin
  #Get Client Statistics
  api_instance.get_client_statistics(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->get_client_statistics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Client ID of the account to retrieve. Defaults to yourself. | [optional] 
 **refresh** | **BOOLEAN**| Boolean for whether data returned should be from cache or not. | [optional] 
 **statistic_values** | **String**| Array of data that should be returned, used exclusively for cacheless data | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_user_country**
> get_user_country

Gets user country

Gets the users country

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

begin
  #Gets user country
  api_instance.get_user_country
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->get_user_country: #{e}"
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



# **reset_api_key**
> reset_api_key

Reset API key

Resets the current user's API key and returns the new key

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

begin
  #Reset API key
  api_instance.reset_api_key
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->reset_api_key: #{e}"
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



# **subscription_purchase_allowed**
> subscription_purchase_allowed

Check if subscription purchase allowed.

Check whether the user can purchase a subscription.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

begin
  #Check if subscription purchase allowed.
  api_instance.subscription_purchase_allowed
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->subscription_purchase_allowed: #{e}"
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



# **update_profile_data**
> update_profile_data(opts)

Add profile information.

Add profile information to this users account

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::AccountsApi.new

opts = { 
  profile_data: "profile_data_example" # String | Profile field information for the account
}

begin
  #Add profile information.
  api_instance.update_profile_data(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->update_profile_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profile_data** | **String**| Profile field information for the account | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



