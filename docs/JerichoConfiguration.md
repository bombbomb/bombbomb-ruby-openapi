# BombBomb::JerichoConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**client_group_id** | **String** |  | [optional] 
**send_date** | **DateTime** | When the email should be sent. | [optional] 
**is_prompt** | **BOOLEAN** | Determines whether this is a static or prompted send. | 
**email_id** | **String** | Static send: The Email to send on behalf of the group members. | [optional] 
**prompt_subject** | **String** | Video Prompt: The subject line prompting the user to record a video. | [optional] 
**prompt_body** | **String** | Video Prompt: The HTML body of the email prompting the user to record a video. | [optional] 
**email_subject** | **String** | Video Prompt: The subject line of the final sent email | [optional] 
**email_body** | **String** | Video Prompt: The HTML body of the final sent email. | [optional] 
**send_without_video** | **BOOLEAN** | Video Prompt: Whether to send the final email if no video was recorded. | [optional] 
**status** | **String** | The state of the send. | [optional] 


