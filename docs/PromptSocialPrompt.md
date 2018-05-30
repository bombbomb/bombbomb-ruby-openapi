# BombBomb::PromptSocialPrompt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier of the prompt. Read Only. | [optional] 
**user_id** | **String** | The prompt&#39;s owner. Read Only. | [optional] 
**jericho_id** | **String** | If sent in a jericho context, this will have the jericho id | [optional] 
**prompt_subject** | **String** | The prompt&#39;s subject line | [optional] 
**prompt_html** | **String** | The suggested script of the prompt. | [optional] 
**scheduled_send_date** | **DateTime** | When the final email is scheduled to be sent | [optional] 
**client_group_id** | **String** | The client group campaign that created the prompt. | [optional] 
**thumbnail_url** | **String** | The URL of a thumbnail image for this prompt | [optional] 
**status** | **Integer** | The status of the prompt: created &#x3D; 0, sent &#x3D; 10, recorded &#x3D; 20, job_created &#x3D; 30, timed_out &#x3D; 40, declined &#x3D; 50 Read Only | [optional] 
**created_date** | **DateTime** | When the email was first sent out | [optional] 
**last_notified** | **DateTime** | When the user was last notified about a prompt email waiting for a video | [optional] 
**send_mechanism** | **DateTime** | The sendMechanism property | [optional] 
**send_types** | **Array&lt;String&gt;** | The types of mechanisms this prompt can send. | [optional] 


