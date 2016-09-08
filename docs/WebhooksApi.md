# BombBomb::WebhooksApi

All URIs are relative to *https://dev.api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_web_hook**](WebhooksApi.md#add_web_hook) | **POST** /webhook | Add Webhook
[**delete_web_hook**](WebhooksApi.md#delete_web_hook) | **DELETE** /webhook/{hookId} | Deletes Webhook
[**get_web_hooks**](WebhooksApi.md#get_web_hooks) | **GET** /webhook/ | Lists Webhooks
[**send_webhook_example**](WebhooksApi.md#send_webhook_example) | **POST** /webhook/test | Sends test Webhook


# **add_web_hook**
> BBWebHook add_web_hook(hook_url)

Add Webhook

Idempotently adds a Webhook url

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::WebhooksApi.new

hook_url = "hook_url_example" # String | The Url of your listener


begin
  #Add Webhook
  result = api_instance.add_web_hook(hook_url)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling WebhooksApi->add_web_hook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hook_url** | **String**| The Url of your listener | 

### Return type

[**BBWebHook**](BBWebHook.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_web_hook**
> String delete_web_hook(hook_id)

Deletes Webhook

Deletes a Webhook

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::WebhooksApi.new

hook_id = "hook_id_example" # String | The id of the webhook to delete


begin
  #Deletes Webhook
  result = api_instance.delete_web_hook(hook_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling WebhooksApi->delete_web_hook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hook_id** | **String**| The id of the webhook to delete | 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_web_hooks**
> Array&lt;BBWebHook&gt; get_web_hooks

Lists Webhooks

Lists all registered Webhooks

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::WebhooksApi.new

begin
  #Lists Webhooks
  result = api_instance.get_web_hooks
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling WebhooksApi->get_web_hooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;BBWebHook&gt;**](BBWebHook.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_webhook_example**
> send_webhook_example

Sends test Webhook

Triggers a test webhook to be sent to your endpoints.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::WebhooksApi.new

begin
  #Sends test Webhook
  api_instance.send_webhook_example
rescue BombBomb::ApiError => e
  puts "Exception when calling WebhooksApi->send_webhook_example: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



