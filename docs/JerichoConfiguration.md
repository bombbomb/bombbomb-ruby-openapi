# BombBomb::JerichoConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**client_group_id** | **String** |  | [optional] 
**send_date** | **DateTime** | When the email should be sent. | [optional] 
**is_prompt** | **BOOLEAN** | Video Prompt: Determines whether this is a static or prompted send. | 
**print_to_template** | **BOOLEAN** | Controls whether or not the content is printed into a template. | [optional] 
**email_id** | **String** | Static send: The Email to send on behalf of the group members. | [optional] 
**example_video_id** | **String** | Video Prompt: The Video to include as an example for prompted users. | [optional] 
**follow_up_video_id** | **String** | The Video to include in the tracking follow up. | [optional] 
**prompt_intro** | **String** | Video Prompt: The intro text directed toward prompted users. | [optional] 
**prompt_subject** | **String** | Video Prompt: The subject line prompting the user to record a video. | [optional] 
**prompt_body** | **String** | Video Prompt: The HTML body of the email prompting the user to record a video. | [optional] 
**email_subject** | **String** | Video Prompt: The subject line of the final sent email | [optional] 
**email_body** | **String** | Video Prompt: The HTML body of the final sent email. | [optional] 
**send_without_video** | **BOOLEAN** | Video Prompt: Whether to send the final email if no video was recorded. | [optional] 
**status** | **String** | The state of the send. | [optional] 
**media_type** | **String** | The type of media used for a social send | [optional] 


