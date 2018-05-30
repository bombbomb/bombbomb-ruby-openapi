# BombBomb::TeamsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_team_member**](TeamsApi.md#add_team_member) | **POST** /team/{teamId}/member | Add Member to Team
[**add_users**](TeamsApi.md#add_users) | **POST** /team/{teamId}/members | Add users to group.
[**add_users_from_csv**](TeamsApi.md#add_users_from_csv) | **POST** /team/{teamId}/members/csv | Add members to group from CSV
[**cancel_jericho_send**](TeamsApi.md#cancel_jericho_send) | **DELETE** /team/{teamId}/jericho/{jerichoId} | Cancel a Jericho Send
[**create_subteam**](TeamsApi.md#create_subteam) | **POST** /team/{teamId}/subteam | Add a Subteam
[**delete_subteam**](TeamsApi.md#delete_subteam) | **DELETE** /team/{teamId}/subteam | Delete Subteam
[**get_all_client_group_associations**](TeamsApi.md#get_all_client_group_associations) | **GET** /team/associations/ | Lists team associations
[**get_client_group_assets**](TeamsApi.md#get_client_group_assets) | **GET** /team/assets/ | Lists team assets
[**get_client_group_statistics**](TeamsApi.md#get_client_group_statistics) | **GET** /team/{teamId}/stats | Get Team statistics
[**get_jericho_sends**](TeamsApi.md#get_jericho_sends) | **GET** /team/{teamId}/jericho | List Jericho Sends
[**get_jericho_stats**](TeamsApi.md#get_jericho_stats) | **GET** /team/{teamId}/jericho/{jerichoId}/performance | Gets Jericho performance statistics
[**get_paged_client_group_members**](TeamsApi.md#get_paged_client_group_members) | **GET** /team/{teamId}/members | List Team Members
[**get_subteams**](TeamsApi.md#get_subteams) | **GET** /team/{teamId}/subteam | List Subteams
[**get_team_prompt_aggregate_stats**](TeamsApi.md#get_team_prompt_aggregate_stats) | **GET** /team/{clientGroupId}/campaign/stats | Get aggregate stats for campaigns
[**get_team_prompt_campaigns**](TeamsApi.md#get_team_prompt_campaigns) | **GET** /team/{clientGroupId}/campaign | Get campaigns for team
[**invite_to_social_prompt_team**](TeamsApi.md#invite_to_social_prompt_team) | **POST** /teams/prompt/invite | Invite a list to join the admin&#39;s social prompt team
[**queue_jericho_send**](TeamsApi.md#queue_jericho_send) | **POST** /team/{teamId}/jericho | Creates a Jericho send.
[**remove_member_from_team**](TeamsApi.md#remove_member_from_team) | **DELETE** /team/{teamId}/member/{userId} | Remove Member from Team
[**resend_team_member_invitation**](TeamsApi.md#resend_team_member_invitation) | **POST** /team/{teamId}/{memberUserId}/rewelcome | Resend invite
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
  admin: true, # BOOLEAN | Set if the user is an admin of this team.
  subgroup_ids: "subgroup_ids_example", # String | Subgroup IDs to add user to
  user_email: "user_email_example", # String | The email of the member being added to the team.
  user_id: "user_id_example" # String | The user id of the member being added to the team.
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
 **admin** | **BOOLEAN**| Set if the user is an admin of this team. | [optional] 
 **subgroup_ids** | **String**| Subgroup IDs to add user to | [optional] 
 **user_email** | **String**| The email of the member being added to the team. | [optional] 
 **user_id** | **String**| The user id of the member being added to the team. | [optional] 

### Return type

**String**

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **add_users**
> add_users(team_id, user_details, opts)

Add users to group.

Add a new or existing user to group.

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

user_details = "user_details_example" # String | Array of emails or objects containing details needed to create user

opts = { 
  send_welcome_email: "send_welcome_email_example", # String | Whether to send welcome email to new users
  subgroup_ids: "subgroup_ids_example" # String | Subgroup IDs to add user to
}

begin
  #Add users to group.
  api_instance.add_users(team_id, user_details, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->add_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **user_details** | **String**| Array of emails or objects containing details needed to create user | 
 **send_welcome_email** | **String**| Whether to send welcome email to new users | [optional] 
 **subgroup_ids** | **String**| Subgroup IDs to add user to | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **add_users_from_csv**
> add_users_from_csv(team_id, csv_import_id, map, opts)

Add members to group from CSV

Imports members to a group from a given CSV ID.

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

csv_import_id = "csv_import_id_example" # String | ID of the CSV to import

map = "map_example" # String | Object to use when mapping import to AccountCreateDetails. Key is property name on details, value is CSV column number.

opts = { 
  send_welcome_email: "send_welcome_email_example", # String | Whether to send welcome email to new users
  subgroup_ids: "subgroup_ids_example" # String | Subgroup IDs to add user to
}

begin
  #Add members to group from CSV
  api_instance.add_users_from_csv(team_id, csv_import_id, map, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->add_users_from_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **csv_import_id** | **String**| ID of the CSV to import | 
 **map** | **String**| Object to use when mapping import to AccountCreateDetails. Key is property name on details, value is CSV column number. | 
 **send_welcome_email** | **String**| Whether to send welcome email to new users | [optional] 
 **subgroup_ids** | **String**| Subgroup IDs to add user to | [optional] 

### Return type

nil (empty response body)

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



# **get_client_group_statistics**
> get_client_group_statistics(team_id, opts)

Get Team statistics

Get top level statistic data for a Team

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
  member_status: "member_status_example" # String | The status of members to query for
}

begin
  #Get Team statistics
  api_instance.get_client_group_statistics(team_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_client_group_statistics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **member_status** | **String**| The status of members to query for | [optional] 

### Return type

nil (empty response body)

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



# **get_paged_client_group_members**
> get_paged_client_group_members(team_id, page_size, page, opts)

List Team Members

Get a paginated listing of Team members

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

page_size = "page_size_example" # String | Amount of records to return in a page.

page = "page_example" # String | The page to return.

opts = { 
  status: "status_example", # String | The status type to filter by.
  search: "search_example", # String | Filter results with names that match the search term.
  order_by: "order_by_example", # String | Key to order results by
  order_direction: "order_direction_example" # String | ASC or DESC
}

begin
  #List Team Members
  api_instance.get_paged_client_group_members(team_id, page_size, page, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_paged_client_group_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **page_size** | **String**| Amount of records to return in a page. | 
 **page** | **String**| The page to return. | 
 **status** | **String**| The status type to filter by. | [optional] 
 **search** | **String**| Filter results with names that match the search term. | [optional] 
 **order_by** | **String**| Key to order results by | [optional] 
 **order_direction** | **String**| ASC or DESC | [optional] 

### Return type

nil (empty response body)

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



# **get_team_prompt_aggregate_stats**
> get_team_prompt_aggregate_stats(client_group_id)

Get aggregate stats for campaigns

Get all the campaigns aggregate stats

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

client_group_id = "client_group_id_example" # String | ID of the client group association


begin
  #Get aggregate stats for campaigns
  api_instance.get_team_prompt_aggregate_stats(client_group_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_team_prompt_aggregate_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_group_id** | **String**| ID of the client group association | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_team_prompt_campaigns**
> get_team_prompt_campaigns(client_group_id, opts)

Get campaigns for team

Get campaigns for the team and their stats

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

client_group_id = "client_group_id_example" # String | ID of the client group association

opts = { 
  search_term: "search_term_example", # String | The value to search for in prompt subject
  current_page: "current_page_example" # String | The current page
}

begin
  #Get campaigns for team
  api_instance.get_team_prompt_campaigns(client_group_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->get_team_prompt_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_group_id** | **String**| ID of the client group association | 
 **search_term** | **String**| The value to search for in prompt subject | [optional] 
 **current_page** | **String**| The current page | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **invite_to_social_prompt_team**
> invite_to_social_prompt_team(team_id, list_id)

Invite a list to join the admin's social prompt team

Invite to Social Prompt Team

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

list_id = "list_id_example" # String | List to invite to the social prompt team.


begin
  #Invite a list to join the admin's social prompt team
  api_instance.invite_to_social_prompt_team(team_id, list_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->invite_to_social_prompt_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **list_id** | **String**| List to invite to the social prompt team. | 

### Return type

nil (empty response body)

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



# **resend_team_member_invitation**
> TeamPublicRepresentation resend_team_member_invitation(team_id, member_user_id)

Resend invite

Resend invitation to a member of a team

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

member_user_id = "member_user_id_example" # String | The user id of the member being resent an invitation.


begin
  #Resend invite
  result = api_instance.resend_team_member_invitation(team_id, member_user_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling TeamsApi->resend_team_member_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| The team id | 
 **member_user_id** | **String**| The user id of the member being resent an invitation. | 

### Return type

[**TeamPublicRepresentation**](TeamPublicRepresentation.md)

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
  name: "name_example", # String | The name of the team
  state: "state_example", # String | The status of the login permissions
  subteams_can_add_members: true # BOOLEAN | Updates subteam member adding setting on group
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
 **state** | **String**| The status of the login permissions | [optional] 
 **subteams_can_add_members** | **BOOLEAN**| Updates subteam member adding setting on group | [optional] 

### Return type

[**TeamPublicRepresentation**](TeamPublicRepresentation.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **update_team_member**
> update_team_member(team_id, user_id, admin, opts)

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

opts = { 
  permission_suite_id: "permission_suite_id_example" # String | Set if the user is an admin of this team.
}

begin
  #Update Member of Team
  api_instance.update_team_member(team_id, user_id, admin, opts)
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
 **permission_suite_id** | **String**| Set if the user is an admin of this team. | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



