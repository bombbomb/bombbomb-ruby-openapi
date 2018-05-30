# BombBomb::VideoEmailPrompt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **String** | Optional. The email template to be used in the sent email, if none supplied, the users&#39; default will be applied. | [optional] 
**email_subject_line** | **String** | The subject line of the final email | [optional] 
**email_content** | **String** | The HTML content of the final email | [optional] 
**contact_id** | **String** | Contact Id to send the final email to | [optional] 
**to_lists** | **Array&lt;String&gt;** | List Ids to send the final email to | [optional] 
**prompt_intro** | **String** | A paragraph intro statement about the purpose of the email you&#39;re recording a video for. | [optional] 
**example_video_id** | **String** | An example or explanatory video to help the user understand what to say. | [optional] 
**followup_video_id** | **String** | An example or explanatory video to help the user understand what to say. | [optional] 
**send_without_video** | **BOOLEAN** | Whether to send the email if no video is recorded. If set to require a video, and none is added before the videoDueDate, the prompt is cancelled. | [optional] 
**video_due_date** | **DateTime** | When the video must be recorded by | [optional] 
**video_id** | **String** | The video that was added to the prompt. Read Only. | [optional] 
**email_id** | **String** | The email that was created by the prompt Read Only. | [optional] 
**job_id** | **String** | The job sent by the prompt Read Only. | [optional] 
**prompt_bot_id** | **String** | The bot that created the prompt. | [optional] 
**apply_template** | **BOOLEAN** | Controls whether a user template is applied to the message as it is sent | [optional] 
**facebook_message** | **String** | The facebook message to be passed off to social sender | [optional] 
**twitter_message** | **String** | The twitter message to be passed off to social sender | [optional] 
**linkedin_message** | **String** | The linkedin message to be passed off to social sender | [optional] 
**alternate_content_id** | **String** | The id for the alternate content id | [optional] 
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


