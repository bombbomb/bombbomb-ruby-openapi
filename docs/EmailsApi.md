# BombBomb::EmailsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_printing_press_email**](EmailsApi.md#create_printing_press_email) | **POST** /emails/print | Create an Email with Printing Press
[**get_all_templates_for_current_user**](EmailsApi.md#get_all_templates_for_current_user) | **GET** /emails/templates | Get all user templates
[**get_email_tracking**](EmailsApi.md#get_email_tracking) | **GET** /emails/{emailId}/tracking | Get Email Tracking
[**get_email_tracking_interactions**](EmailsApi.md#get_email_tracking_interactions) | **GET** /emails/{emailId}/tracking/interactions | Get Email Tracking Interactions
[**get_hourly_email_tracking**](EmailsApi.md#get_hourly_email_tracking) | **GET** /emails/{emailId}/tracking/hourly | Get Hourly Email Tracking
[**get_quick_send_templates**](EmailsApi.md#get_quick_send_templates) | **GET** /emails/quicksend/templates | Get all quicksend templates
[**video_quick_sender**](EmailsApi.md#video_quick_sender) | **POST** /emails/quicksend | Send a quicksend email


# **create_printing_press_email**
> create_printing_press_email(template_id, content, opts)

Create an Email with Printing Press

Prints an email using the template id and content to the users account.If a video id is included, it will replace any video placeholders with that video.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

template_id = "template_id_example" # String | The template id to be printed.

content = "content_example" # String | The content of the email.

opts = { 
  email_id: "email_id_example", # String | The email id to be printed to.
  video_id: "video_id_example", # String | A video to replace video place holders with.
  subject_line: "subject_line_example" # String | The subject line to be printed.
}

begin
  #Create an Email with Printing Press
  api_instance.create_printing_press_email(template_id, content, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->create_printing_press_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| The template id to be printed. | 
 **content** | **String**| The content of the email. | 
 **email_id** | **String**| The email id to be printed to. | [optional] 
 **video_id** | **String**| A video to replace video place holders with. | [optional] 
 **subject_line** | **String**| The subject line to be printed. | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_all_templates_for_current_user**
> get_all_templates_for_current_user(opts)

Get all user templates

Get all templates accessible to the current user

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

opts = { 
  quick_send_only: true # BOOLEAN | Whether to return only quick send templates.
}

begin
  #Get all user templates
  api_instance.get_all_templates_for_current_user(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->get_all_templates_for_current_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quick_send_only** | **BOOLEAN**| Whether to return only quick send templates. | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_email_tracking**
> get_email_tracking(email_id, opts)

Get Email Tracking

Get Tracking data for all sends of an Email

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

email_id = "email_id_example" # String | ID of the email

opts = { 
  job_id: "job_id_example" # String | ID of the Job (or null for all jobs)
}

begin
  #Get Email Tracking
  api_instance.get_email_tracking(email_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->get_email_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**| ID of the email | 
 **job_id** | **String**| ID of the Job (or null for all jobs) | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_email_tracking_interactions**
> get_email_tracking_interactions(email_id, opts)

Get Email Tracking Interactions

Get Contact detail interactions for an Email

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

email_id = "email_id_example" # String | ID of the email

opts = { 
  job_id: "job_id_example", # String | ID of the Job (or null for all jobs)
  interaction_type: "interaction_type_example", # String | Interaction type to order and filter by
  search_term: "search_term_example" # String | Search term to filer by
}

begin
  #Get Email Tracking Interactions
  api_instance.get_email_tracking_interactions(email_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->get_email_tracking_interactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**| ID of the email | 
 **job_id** | **String**| ID of the Job (or null for all jobs) | [optional] 
 **interaction_type** | **String**| Interaction type to order and filter by | [optional] 
 **search_term** | **String**| Search term to filer by | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_hourly_email_tracking**
> get_hourly_email_tracking(email_id, opts)

Get Hourly Email Tracking

Get Tracking data for an Email,             broken down by the hour and filterable by an Interaction type

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

email_id = "email_id_example" # String | ID of the email

opts = { 
  job_id: "job_id_example", # String | ID of the Job (or null for all jobs)
  interaction_type: "interaction_type_example" # String | Interaction type to filter by
}

begin
  #Get Hourly Email Tracking
  api_instance.get_hourly_email_tracking(email_id, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->get_hourly_email_tracking: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**| ID of the email | 
 **job_id** | **String**| ID of the Job (or null for all jobs) | [optional] 
 **interaction_type** | **String**| Interaction type to filter by | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_quick_send_templates**
> get_quick_send_templates

Get all quicksend templates

Get all quicksend templates accessible to the user.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

begin
  #Get all quicksend templates
  api_instance.get_quick_send_templates
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->get_quick_send_templates: #{e}"
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



# **video_quick_sender**
> video_quick_sender(opts)

Send a quicksend email

Send a quicksend video email to the list or users provided.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::EmailsApi.new

opts = { 
  video_id: "video_id_example", # String | A guid id for the video.
  email_addresses: "email_addresses_example", # String | A semi-colon separated list of email addresses to send to.
  subject: "subject_example", # String | Subject line for the email.
  message: "message_example", # String | Message for the body of the email.
  list_ids: "list_ids_example", # String | An array of list ids
  scheduled_send_timestamp: 56, # Integer | When to schedule the send (seconds since epoch). null value means send immediately.
  extended_properties: "extended_properties_example", # String | Bool value that when checked will send back both emailId as well as extra properties
  template_id: "template_id_example", # String | Id of a template to use for this send. A null value means use the default for this user.
  strip_html: "strip_html_example" # String | remove HTML elements
}

begin
  #Send a quicksend email
  api_instance.video_quick_sender(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling EmailsApi->video_quick_sender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **String**| A guid id for the video. | [optional] 
 **email_addresses** | **String**| A semi-colon separated list of email addresses to send to. | [optional] 
 **subject** | **String**| Subject line for the email. | [optional] 
 **message** | **String**| Message for the body of the email. | [optional] 
 **list_ids** | **String**| An array of list ids | [optional] 
 **scheduled_send_timestamp** | **Integer**| When to schedule the send (seconds since epoch). null value means send immediately. | [optional] 
 **extended_properties** | **String**| Bool value that when checked will send back both emailId as well as extra properties | [optional] 
 **template_id** | **String**| Id of a template to use for this send. A null value means use the default for this user. | [optional] 
 **strip_html** | **String**| remove HTML elements | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



