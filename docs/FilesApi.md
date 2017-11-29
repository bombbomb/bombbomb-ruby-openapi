# BombBomb::FilesApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**doc_host_delete**](FilesApi.md#doc_host_delete) | **DELETE** /files/{docId} | Delete file
[**doc_host_get**](FilesApi.md#doc_host_get) | **GET** /files/{docId} | Get file
[**doc_host_list**](FilesApi.md#doc_host_list) | **GET** /files | List all files
[**doc_host_upload_v2**](FilesApi.md#doc_host_upload_v2) | **POST** /files | Upload a file
[**get_hosted_images_paged**](FilesApi.md#get_hosted_images_paged) | **GET** /files/images/paged | Get paged hosted images


# **doc_host_delete**
> doc_host_delete(doc_id)

Delete file

Deletes a users file

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FilesApi.new

doc_id = "doc_id_example" # String | Id of document


begin
  #Delete file
  api_instance.doc_host_delete(doc_id)
rescue BombBomb::ApiError => e
  puts "Exception when calling FilesApi->doc_host_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doc_id** | **String**| Id of document | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **doc_host_get**
> HostedDoc doc_host_get(doc_id)

Get file

Get a single file by id

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FilesApi.new

doc_id = "doc_id_example" # String | Id of document


begin
  #Get file
  result = api_instance.doc_host_get(doc_id)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling FilesApi->doc_host_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doc_id** | **String**| Id of document | 

### Return type

[**HostedDoc**](HostedDoc.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **doc_host_list**
> Array&lt;HostedDoc&gt; doc_host_list

List all files

List all uploaded user files

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FilesApi.new

begin
  #List all files
  result = api_instance.doc_host_list
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling FilesApi->doc_host_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;HostedDoc&gt;**](HostedDoc.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **doc_host_upload_v2**
> Array&lt;HostedDoc&gt; doc_host_upload_v2(file)

Upload a file

Upload a new file

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FilesApi.new

file = "file_example" # String | The file being uploaded


begin
  #Upload a file
  result = api_instance.doc_host_upload_v2(file)
  p result
rescue BombBomb::ApiError => e
  puts "Exception when calling FilesApi->doc_host_upload_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**| The file being uploaded | 

### Return type

[**Array&lt;HostedDoc&gt;**](HostedDoc.md)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_hosted_images_paged**
> get_hosted_images_paged(page_size, page, opts)

Get paged hosted images

Get a specific page of uploaded images available to the user.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::FilesApi.new

page_size = "page_size_example" # String | The number of items to retrieve in a single db query.

page = "page_example" # String | Zero-based index of the page of data to retrieve from the db.

opts = { 
  search: "search_example" # String | Filter results with names that match the search term.
}

begin
  #Get paged hosted images
  api_instance.get_hosted_images_paged(page_size, page, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling FilesApi->get_hosted_images_paged: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **String**| The number of items to retrieve in a single db query. | 
 **page** | **String**| Zero-based index of the page of data to retrieve from the db. | 
 **search** | **String**| Filter results with names that match the search term. | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



