# BombBomb::AccountsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_details**](AccountsApi.md#account_details) | **GET** /accounts | Get account details.
[**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create Account
[**subscription_purchase_allowed**](AccountsApi.md#subscription_purchase_allowed) | **GET** /accounts/purchaseable | Check if subscription purchase allowed.


# **account_details**
> account_details(opts)

Get account details.

Get the details of the user's account.

### Example
```ruby
# load the gem
require 'bombbomb'

api_instance = BombBomb::AccountsApi.new

opts = { 
  email: "email_example", # String | Your login email address
  pw: "pw_example", # String | Your password
  api_key: "api_key_example" # String | Your Api Key
}

begin
  #Get account details.
  api_instance.account_details(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->account_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Your login email address | [optional] 
 **pw** | **String**| Your password | [optional] 
 **api_key** | **String**| Your Api Key | [optional] 

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
  postal_code: "postal_code_example" # String | Postal/Zip code of the user.
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

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **subscription_purchase_allowed**
> subscription_purchase_allowed(opts)

Check if subscription purchase allowed.

Check whether the user can purchase a subscription.

### Example
```ruby
# load the gem
require 'bombbomb'

api_instance = BombBomb::AccountsApi.new

opts = { 
  email: "email_example", # String | Your login email address
  pw: "pw_example", # String | Your password
  api_key: "api_key_example" # String | Your Api Key
}

begin
  #Check if subscription purchase allowed.
  api_instance.subscription_purchase_allowed(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling AccountsApi->subscription_purchase_allowed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Your login email address | [optional] 
 **pw** | **String**| Your password | [optional] 
 **api_key** | **String**| Your Api Key | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



