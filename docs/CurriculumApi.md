# BombBomb::CurriculumApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_curricula**](CurriculumApi.md#get_curricula) | **GET** /curricula/ | Get Curricula
[**get_user_curriculum_with_progress**](CurriculumApi.md#get_user_curriculum_with_progress) | **GET** /curriculum/getForUserWithProgress | Get Detailed For User


# **get_curricula**
> Array&lt;Curriculum&gt; get_curricula(opts)

Get Curricula

Get Curricula, optionally with progress included.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::CurriculumApi.new

opts = { 
  include_progress: true # BOOLEAN | Whether to return progress with the curriculum.
}

begin
  #Get Curricula
  result = api_instance.get_curricula(opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling CurriculumApi->get_curricula: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_progress** | **BOOLEAN**| Whether to return progress with the curriculum. | [optional] 

### Return type

[**Array&lt;Curriculum&gt;**](Curriculum.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_user_curriculum_with_progress**
> Array&lt;CurriculumWithProgress&gt; get_user_curriculum_with_progress

Get Detailed For User

Get all curricula for user including progress for each curriculum.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::CurriculumApi.new

begin
  #Get Detailed For User
  result = api_instance.get_user_curriculum_with_progress
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling CurriculumApi->get_user_curriculum_with_progress: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;CurriculumWithProgress&gt;**](CurriculumWithProgress.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



