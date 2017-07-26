# BombBomb::TeamsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_team_member**](TeamsApi.md#add_team_member) | **POST** /team/{teamId}/member | Add Member to Team
[**cancel_jericho_send**](TeamsApi.md#cancel_jericho_send) | **DELETE** /team/{teamId}/jericho/{jerichoId} | Cancel a Jericho Send
[**create_subteam**](TeamsApi.md#create_subteam) | **POST** /team/{teamId}/subteam | Add a Subteam
[**delete_subteam**](TeamsApi.md#delete_subteam) | **DELETE** /team/{teamId}/subteam | Delete Subteam
[**get_all_client_group_associations**](TeamsApi.md#get_all_client_group_associations) | **GET** /team/associations/ | Lists team associations
[**get_client_group_assets**](TeamsApi.md#get_client_group_assets) | **GET** /team/assets/ | Lists team assets
[**get_jericho_sends**](TeamsApi.md#get_jericho_sends) | **GET** /team/{teamId}/jericho | List Jericho Sends
[**get_jericho_stats**](TeamsApi.md#get_jericho_stats) | **GET** /team/{teamId}/jericho/{jerichoId}/performance | Gets Jericho performance statistics
[**get_subteams**](TeamsApi.md#get_subteams) | **GET** /team/{teamId}/subteam | List Subteams
[**queue_jericho_send**](TeamsApi.md#queue_jericho_send) | **POST** /team/{teamId}/jericho | Creates a Jericho send.
[**remove_member_from_team**](TeamsApi.md#remove_member_from_team) | **DELETE** /team/{teamId}/member/{userId} | Remove Member from Team
[**update_jericho_prompt_send**](TeamsApi.md#update_jericho_prompt_send) | **PUT** /team/{teamId}/jericho/{jerichoId} | Updates the Jericho Prompt Settings
[**update_team**](TeamsApi.md#update_team) | **POST** /team/{teamId} | Update a team
[**update_team_member**](TeamsApi.md#update_team_member) | **PUT** /team/{teamId}/member | Update Member of Team


# **add_team_member**
> String add_team_member(team_id, opts)

Add Member to Team

Adds a member to a team.

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

team_id = "team_id_example" # String | The team id

opts = { 
  user_id: "user_id_example", # String | The user id of the member being added to the team.
  user_email: "user_email_example", # String | The email of the member being added to the team.
  admin: true # BOOLEAN | Set if the user is an admin of this team.
}

begin
  #Add Member to Team
  result = api_instance.add_team_member(team_id, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->add_team_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **user_id** | **String**| The user id of the member being added to the team. | [optional] 
 **user_email** | **String**| The email of the member being added to the team. | [optional] 
 **admin** | **BOOLEAN**| Set if the user is an admin of this team. | [optional] 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **create_subteam**
> TeamPublicRepresentation create_subteam(team_id, name)

Add a Subteam

Adds a subteam to a parent team

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

team_id = "team_id_example" # String | The team id

name = "name_example" # String | The subteam's name.


begin
  #Add a Subteam
  result = api_instance.create_subteam(team_id, name)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->create_subteam: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **name** | **String**| The subteam&#39;s name. | 

### Return type

[**TeamPublicRepresentation**](TeamPublicRepresentation.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **delete_subteam**
> String delete_subteam(team_id, subteam_id)

Delete Subteam

Deletes a subteam

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

team_id = "team_id_example" # String | The team id

subteam_id = "subteam_id_example" # String | The subteam you wish to delete.


begin
  #Delete Subteam
  result = api_instance.delete_subteam(team_id, subteam_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->delete_subteam: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **subteam_id** | **String**| The subteam you wish to delete. | 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_all_client_group_associations**
> get_all_client_group_associations(client_id)

Lists team associations

Returns a collection of team associations for a given user

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

client_id = "client_id_example" # String | The clientId requesting group associations.


begin
  #Lists team associations
  api_instance.get_all_client_group_associations(client_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_all_client_group_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| The clientId requesting group associations. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

 - **Content-Type**: application/x-www-form-urlencoded
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

 - **Content-Type**: application/x-www-form-urlencoded
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_subteams**
> Array&lt;TeamPublicRepresentation&gt; get_subteams(team_id)

List Subteams

Returns a collection of subteams for a parent team

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

team_id = "team_id_example" # String | The team id


begin
  #List Subteams
  result = api_instance.get_subteams(team_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_subteams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 

### Return type

[**Array&lt;TeamPublicRepresentation&gt;**](TeamPublicRepresentation.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_member_from_team**
> String remove_member_from_team(team_id, user_id)

Remove Member from Team

Removes a member from a team.

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

team_id = "team_id_example" # String | The team id

user_id = "user_id_example" # String | The user id of the member being removed.


begin
  #Remove Member from Team
  result = api_instance.remove_member_from_team(team_id, user_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->remove_member_from_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **user_id** | **String**| The user id of the member being removed. | 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_jericho_prompt_send**
> update_jericho_prompt_send(team_id, jericho_id)

Updates the Jericho Prompt Settings

Updates the prompt settings based on the original email id

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

team_id = "team_id_example" # String | The team id

jericho_id = "jericho_id_example" # String | ID of the Jericho job


begin
  #Updates the Jericho Prompt Settings
  api_instance.update_jericho_prompt_send(team_id, jericho_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->update_jericho_prompt_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **jericho_id** | **String**| ID of the Jericho job | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_team**
> TeamPublicRepresentation update_team(team_id, opts)

Update a team

Update fields on a team

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

team_id = "team_id_example" # String | The team id

opts = { 
  name: "name_example" # String | The name of the team
}

begin
  #Update a team
  result = api_instance.update_team(team_id, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->update_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **name** | **String**| The name of the team | [optional] 

### Return type

[**TeamPublicRepresentation**](TeamPublicRepresentation.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_team_member**
> update_team_member(team_id, user_id, admin)

Update Member of Team

Updates a member of a team

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

team_id = "team_id_example" # String | The team id

user_id = "user_id_example" # String | The user id of the member being added to the team.

admin = true # BOOLEAN | Set if the user is an admin of this team.


begin
  #Update Member of Team
  api_instance.update_team_member(team_id, user_id, admin)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->update_team_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **user_id** | **String**| The user id of the member being added to the team. | 
 **admin** | **BOOLEAN**| Set if the user is an admin of this team. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



