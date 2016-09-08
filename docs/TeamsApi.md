# BombBomb::TeamsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_jericho_send**](TeamsApi.md#cancel_jericho_send) | **DELETE** /team/{teamId}/jericho/{jerichoId} | Cancel a Jericho Send
[**get_client_group_assets**](TeamsApi.md#get_client_group_assets) | **GET** /team/assets/ | Lists team assets
[**get_jericho_sends**](TeamsApi.md#get_jericho_sends) | **GET** /team/{teamId}/jericho | List Jericho Sends
[**get_jericho_stats**](TeamsApi.md#get_jericho_stats) | **GET** /team/{teamId}/jericho/{jerichoId}/performance | Gets Jericho performance statistics
[**queue_jericho_send**](TeamsApi.md#queue_jericho_send) | **POST** /team/{teamId}/jericho | Creates a Jericho send.


# **cancel_jericho_send**
> cancel_jericho_send(jericho_id)

Cancel a Jericho Send

Cancels a scheduled Jericho send from being sent.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::TeamsApi.new

jericho_id = "jericho_id_example" # String | ID of the Jericho Job to cancel


begin
  #Cancel a Jericho Send
  api_instance.cancel_jericho_send(jericho_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->cancel_jericho_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jericho_id** | **String**| ID of the Jericho Job to cancel | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_client_group_assets**
> InlineResponse200 get_client_group_assets(asset_type, opts)

Lists team assets

Returns a collection of assets

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::TeamsApi.new

asset_type = "asset_type_example" # String | The type of assets.

opts = { 
  team_id: "team_id_example", # String | The team containing the assets.
  auto_tag_name: "auto_tag_name_example", # String | The auto tag name containing the assets.
  page_size: "page_size_example", # String | The number of items to retrieve in a single db query.
  page: "page_example", # String | Zero-based index of the page of data to retrieve from the db.
  search: "search_example" # String | Search words.
}

begin
  #Lists team assets
  result = api_instance.get_client_group_assets(asset_type, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_client_group_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_type** | **String**| The type of assets. | 
 **team_id** | **String**| The team containing the assets. | [optional] 
 **auto_tag_name** | **String**| The auto tag name containing the assets. | [optional] 
 **page_size** | **String**| The number of items to retrieve in a single db query. | [optional] 
 **page** | **String**| Zero-based index of the page of data to retrieve from the db. | [optional] 
 **search** | **String**| Search words. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_jericho_sends**
> Array&lt;JerichoConfiguration&gt; get_jericho_sends(team_id)

List Jericho Sends

Lists Jericho sends, both pending and sent.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::TeamsApi.new

team_id = "team_id_example" # String | The team whose Jericho sends you wish to see.


begin
  #List Jericho Sends
  result = api_instance.get_jericho_sends(team_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_jericho_sends: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team whose Jericho sends you wish to see. | 

### Return type

[**Array&lt;JerichoConfiguration&gt;**](JerichoConfiguration.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_jericho_stats**
> JerichoPerformance get_jericho_stats(jericho_id, team_id)

Gets Jericho performance statistics

Returns an aggregate view of the performance of a Jericho send

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::TeamsApi.new

jericho_id = "jericho_id_example" # String | ID of the Jericho job

team_id = "team_id_example" # String | ID of team through which Jericho was sent


begin
  #Gets Jericho performance statistics
  result = api_instance.get_jericho_stats(jericho_id, team_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_jericho_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jericho_id** | **String**| ID of the Jericho job | 
 **team_id** | **String**| ID of team through which Jericho was sent | 

### Return type

[**JerichoPerformance**](JerichoPerformance.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **queue_jericho_send**
> JerichoConfiguration queue_jericho_send(config, team_id)

Creates a Jericho send.

Sends email content on behalf of members of a client group. There are two forms this send can take:         Static Email, and Video Prompt. Static emails require only an emailId.         Video Prompts build emails dynamically and require most of the other fields.         You must be an administrator of a Team Account to use this method.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::TeamsApi.new

config = BombBomb::JerichoConfiguration.new # JerichoConfiguration | JSON representing a Jericho configuration

team_id = "team_id_example" # String | The ID of the team.


begin
  #Creates a Jericho send.
  result = api_instance.queue_jericho_send(config, team_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->queue_jericho_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config** | [**JerichoConfiguration**](JerichoConfiguration.md)| JSON representing a Jericho configuration | 
 **team_id** | **String**| The ID of the team. | 

### Return type

[**JerichoConfiguration**](JerichoConfiguration.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



