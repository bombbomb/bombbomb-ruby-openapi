# BombBomb::ContactsApi

All URIs are relative to *https://api.bombbomb.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contacts_csv**](ContactsApi.md#add_contacts_csv) | **POST** /contacts/import_csv | Add contacts from a CSV file.
[**add_new_contact**](ContactsApi.md#add_new_contact) | **POST** /contacts/ | Add a contact.
[**add_new_custom_field**](ContactsApi.md#add_new_custom_field) | **POST** /contacts/custom_fields/ | Add custom fields.
[**add_pasted_contacts**](ContactsApi.md#add_pasted_contacts) | **POST** /contacts/paste | Add pasted contacts.
[**c_sv_to_object**](ContactsApi.md#c_sv_to_object) | **POST** /csv-to-object | Format CSV.
[**delete_contacts**](ContactsApi.md#delete_contacts) | **PUT** /contacts/delete | Delete Contacts
[**get_contact_by_id**](ContactsApi.md#get_contact_by_id) | **GET** /contact/{id} | Get Contact Details
[**get_custom_fields**](ContactsApi.md#get_custom_fields) | **GET** /contacts/custom_fields/ | Get custom fields.


# **add_contacts_csv**
> add_contacts_csv(mapping_data, list_data)

Add contacts from a CSV file.

Add multiple contacts through the upload importer from a CSV file.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

mapping_data = "mapping_data_example" # String | The info sent for the contacts

list_data = "list_data_example" # String | The info sent with the import for the list


begin
  #Add contacts from a CSV file.
  api_instance.add_contacts_csv(mapping_data, list_data)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->add_contacts_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapping_data** | **String**| The info sent for the contacts | 
 **list_data** | **String**| The info sent with the import for the list | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **add_new_contact**
> add_new_contact(contact_email, opts)

Add a contact.

Add a contact to the users list.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

contact_email = "contact_email_example" # String | Email of the new contact we are adding

opts = { 
  contact_info: "contact_info_example" # String | The info sent for this contact
}

begin
  #Add a contact.
  api_instance.add_new_contact(contact_email, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->add_new_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_email** | **String**| Email of the new contact we are adding | 
 **contact_info** | **String**| The info sent for this contact | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **add_new_custom_field**
> add_new_custom_field(field_name, opts)

Add custom fields.

Add a new custom field.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

field_name = "field_name_example" # String | Custom field name to be added

opts = { 
  field_type: "field_type_example" # String | Custom field type for the field to be added
}

begin
  #Add custom fields.
  api_instance.add_new_custom_field(field_name, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->add_new_custom_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_name** | **String**| Custom field name to be added | 
 **field_type** | **String**| Custom field type for the field to be added | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **add_pasted_contacts**
> add_pasted_contacts(contact_emails, opts)

Add pasted contacts.

Add the pasted contacts to the users list.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

contact_emails = "contact_emails_example" # String | Emails array of the new contacts we are adding

opts = { 
  list_info: "list_info_example" # String | Information about the lists id, recalculations on totals, consent etc
}

begin
  #Add pasted contacts.
  api_instance.add_pasted_contacts(contact_emails, opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->add_pasted_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_emails** | **String**| Emails array of the new contacts we are adding | 
 **list_info** | **String**| Information about the lists id, recalculations on totals, consent etc | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **c_sv_to_object**
> c_sv_to_object(file)

Format CSV.

Format a CSV file to an object.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

file = "file_example" # String | The CSV file being uploaded


begin
  #Format CSV.
  api_instance.c_sv_to_object(file)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->c_sv_to_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**| The CSV file being uploaded | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **delete_contacts**
> delete_contacts(opts)

Delete Contacts

Delete all contacts within a list, or provide a comma separated list of contactIds to delete.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

opts = { 
  list_id: "list_id_example", # String | The list of contacts to be deleted.
  contact_ids: "contact_ids_example" # String | comma separated list of contact ids to delete
}

begin
  #Delete Contacts
  api_instance.delete_contacts(opts)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->delete_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| The list of contacts to be deleted. | [optional] 
 **contact_ids** | **String**| comma separated list of contact ids to delete | [optional] 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_contact_by_id**
> get_contact_by_id(id)

Get Contact Details

Get the contact details

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

id = "id_example" # String | Guid for the contact.


begin
  #Get Contact Details
  api_instance.get_contact_by_id(id)
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->get_contact_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Guid for the contact. | 

### Return type

nil (empty response body)

### Authorization

[BBOAuth2](../README.md#BBOAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **get_custom_fields**
> get_custom_fields

Get custom fields.

Get the current users custom fields.

### Example
```ruby
# load the gem
require 'bombbomb'
# setup authorization
BombBomb.configure do |config|
  # Configure OAuth2 access token for authorization: BBOAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BombBomb::ContactsApi.new

begin
  #Get custom fields.
  api_instance.get_custom_fields
rescue BombBomb::ApiError => e
  puts "Exception when calling ContactsApi->get_custom_fields: #{e}"
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



