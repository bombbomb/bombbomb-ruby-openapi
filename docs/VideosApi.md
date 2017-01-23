# BombBomb::VideosApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_video_recorder**](VideosApi.md#get_video_recorder) | **GET** /videos/live/getRecorder | Get Live Video Recorder HTML
[**mark_live_recording_complete**](VideosApi.md#mark_live_recording_complete) | **POST** /videos/live/markComplete | Completes a live recording
[**sign_upload**](VideosApi.md#sign_upload) | **POST** /video/signedUpload | Generate Signed Url


# **get_video_recorder**
> VideoRecorderMethodResponse get_video_recorder(opts)

Get Live Video Recorder HTML

Returns an object with a number of properties to help you put a video recorder on your site.         This is to be used in conjunction with the VideoRecordedLive call one the user has confirmed in your UI that         the video is how they want it.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::VideosApi.new

opts = { 
  width: 56, # Integer | The width of the recorder to present.
  video_id: "video_id_example" # String | The id of the video to record
}

begin
  #Get Live Video Recorder HTML
  result = api_instance.get_video_recorder(opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling VideosApi->get_video_recorder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **width** | **Integer**| The width of the recorder to present. | [optional] 
 **video_id** | **String**| The id of the video to record | [optional] 

### Return type

[**VideoRecorderMethodResponse**](VideoRecorderMethodResponse.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **mark_live_recording_complete**
> VideoPublicRepresentation mark_live_recording_complete(video_id, filename, title)

Completes a live recording

Used in conjunction with the live recorder method to mark a video recording as complete.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::VideosApi.new

video_id = "video_id_example" # String | The id of the video to mark as done.

filename = "filename_example" # String | The filename that was chosen as the final video.

title = "title_example" # String | The title to give the video


begin
  #Completes a live recording
  result = api_instance.mark_live_recording_complete(video_id, filename, title)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling VideosApi->mark_live_recording_complete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **video_id** | **String**| The id of the video to mark as done. | 
 **filename** | **String**| The filename that was chosen as the final video. | 
 **title** | **String**| The title to give the video | 

### Return type

[**VideoPublicRepresentation**](VideoPublicRepresentation.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **sign_upload**
> String sign_upload(policy, opts)

Generate Signed Url

Generates a signed url to be used for video uploads.

### Example
```ruby
# load the gem
require 'bombbomb'

api_instance = BombBomb::VideosApi.new

policy = BombBomb::SignUploadRequest.new # SignUploadRequest | The policy to sign

opts = { 
  v4: true # BOOLEAN | Whether to do v4 signing
}

begin
  #Generate Signed Url
  result = api_instance.sign_upload(policy, opts)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling VideosApi->sign_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy** | [**SignUploadRequest**](SignUploadRequest.md)| The policy to sign | 
 **v4** | **BOOLEAN**| Whether to do v4 signing | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



