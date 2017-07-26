# BombBomb::EmailsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_printing_press_email**](EmailsApi.md#create_printing_press_email) | **POST** /emails/print | Create an Email with Printing Press
[**get_email_tracking**](EmailsApi.md#get_email_tracking) | **GET** /emails/{emailId}/tracking | Get Email Tracking
[**get_email_tracking_interactions**](EmailsApi.md#get_email_tracking_interactions) | **GET** /emails/{emailId}/tracking/interactions | Get Email Tracking Interactions
[**get_hourly_email_tracking**](EmailsApi.md#get_hourly_email_tracking) | **GET** /emails/{emailId}/tracking/hourly | Get Hourly Email Tracking


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



