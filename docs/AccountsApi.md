# BombBomb::AccountsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_details**](AccountsApi.md#account_details) | **GET** /accounts | Get account details.
[**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create Account
[**get_client_statistics**](AccountsApi.md#get_client_statistics) | **GET** /accounts/stats | Get Client Statistics
[**subscription_purchase_allowed**](AccountsApi.md#subscription_purchase_allowed) | **GET** /accounts/purchaseable | Check if subscription purchase allowed.


# **account_details**
> account_details

Get account details.

Get the details of the user's account.

### Example
```ruby
# load the gem
require 'bombbomb'

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

No authorization required

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
  prevent_welcome_email: "prevent_welcome_email_example" # String | prevent an email with login credentials from being sent to the new account. must be set to 'true'
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
 **prevent_welcome_email** | **String**| prevent an email with login credentials from being sent to the new account. must be set to &#39;true&#39; | [optional] 

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
  client_id: "client_id_example" # String | Client ID of the account to retrieve. Defaults to yourself.
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



