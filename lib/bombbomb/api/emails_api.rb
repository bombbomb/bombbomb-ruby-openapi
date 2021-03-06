=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.831

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module BombBomb
  class EmailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an Email with Printing Press
    # Prints an email using the template id and content to the users account.If a video id is included, it will replace any video placeholders with that video.
    # @param template_id The template id to be printed.
    # @param content The content of the email.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email_id The email id to be printed to.
    # @option opts [String] :video_id A video to replace video place holders with.
    # @option opts [String] :subject_line The subject line to be printed.
    # @return [nil]
    def create_printing_press_email(template_id, content, opts = {})
      create_printing_press_email_with_http_info(template_id, content, opts)
      return nil
    end

    # Create an Email with Printing Press
    # Prints an email using the template id and content to the users account.If a video id is included, it will replace any video placeholders with that video.
    # @param template_id The template id to be printed.
    # @param content The content of the email.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email_id The email id to be printed to.
    # @option opts [String] :video_id A video to replace video place holders with.
    # @option opts [String] :subject_line The subject line to be printed.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_printing_press_email_with_http_info(template_id, content, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.create_printing_press_email ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling EmailsApi.create_printing_press_email"
      end
      # verify the required parameter 'content' is set
      if @api_client.config.client_side_validation && content.nil?
        fail ArgumentError, "Missing the required parameter 'content' when calling EmailsApi.create_printing_press_email"
      end
      # resource path
      local_var_path = "/emails/print"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["templateId"] = template_id
      form_params["content"] = content
      form_params["emailId"] = opts[:'email_id'] if !opts[:'email_id'].nil?
      form_params["videoId"] = opts[:'video_id'] if !opts[:'video_id'].nil?
      form_params["subjectLine"] = opts[:'subject_line'] if !opts[:'subject_line'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#create_printing_press_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all user templates
    # Get all templates accessible to the current user
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :quick_send_only Whether to return only quick send templates.
    # @return [nil]
    def get_all_templates_for_current_user(opts = {})
      get_all_templates_for_current_user_with_http_info(opts)
      return nil
    end

    # Get all user templates
    # Get all templates accessible to the current user
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :quick_send_only Whether to return only quick send templates.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_all_templates_for_current_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_all_templates_for_current_user ..."
      end
      # resource path
      local_var_path = "/emails/templates"

      # query parameters
      query_params = {}
      query_params[:'quickSendOnly'] = opts[:'quick_send_only'] if !opts[:'quick_send_only'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_all_templates_for_current_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Email Tracking
    # Get Tracking data for all sends of an Email
    # @param email_id ID of the email
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id ID of the Job (or null for all jobs)
    # @return [nil]
    def get_email_tracking(email_id, opts = {})
      get_email_tracking_with_http_info(email_id, opts)
      return nil
    end

    # Get Email Tracking
    # Get Tracking data for all sends of an Email
    # @param email_id ID of the email
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id ID of the Job (or null for all jobs)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_email_tracking_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_email_tracking ..."
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailsApi.get_email_tracking"
      end
      # resource path
      local_var_path = "/emails/{emailId}/tracking".sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'jobId'] = opts[:'job_id'] if !opts[:'job_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_email_tracking\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Email Tracking Interactions
    # Get Contact detail interactions for an Email
    # @param email_id ID of the email
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id ID of the Job (or null for all jobs)
    # @option opts [String] :interaction_type Interaction type to order and filter by
    # @option opts [String] :search_term Search term to filer by
    # @return [nil]
    def get_email_tracking_interactions(email_id, opts = {})
      get_email_tracking_interactions_with_http_info(email_id, opts)
      return nil
    end

    # Get Email Tracking Interactions
    # Get Contact detail interactions for an Email
    # @param email_id ID of the email
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id ID of the Job (or null for all jobs)
    # @option opts [String] :interaction_type Interaction type to order and filter by
    # @option opts [String] :search_term Search term to filer by
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_email_tracking_interactions_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_email_tracking_interactions ..."
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailsApi.get_email_tracking_interactions"
      end
      # resource path
      local_var_path = "/emails/{emailId}/tracking/interactions".sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'jobId'] = opts[:'job_id'] if !opts[:'job_id'].nil?
      query_params[:'interactionType'] = opts[:'interaction_type'] if !opts[:'interaction_type'].nil?
      query_params[:'searchTerm'] = opts[:'search_term'] if !opts[:'search_term'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_email_tracking_interactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Hourly Email Tracking
    # Get Tracking data for an Email,             broken down by the hour and filterable by an Interaction type
    # @param email_id ID of the email
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id ID of the Job (or null for all jobs)
    # @option opts [String] :interaction_type Interaction type to filter by
    # @return [nil]
    def get_hourly_email_tracking(email_id, opts = {})
      get_hourly_email_tracking_with_http_info(email_id, opts)
      return nil
    end

    # Get Hourly Email Tracking
    # Get Tracking data for an Email,             broken down by the hour and filterable by an Interaction type
    # @param email_id ID of the email
    # @param [Hash] opts the optional parameters
    # @option opts [String] :job_id ID of the Job (or null for all jobs)
    # @option opts [String] :interaction_type Interaction type to filter by
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_hourly_email_tracking_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_hourly_email_tracking ..."
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailsApi.get_hourly_email_tracking"
      end
      # resource path
      local_var_path = "/emails/{emailId}/tracking/hourly".sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'jobId'] = opts[:'job_id'] if !opts[:'job_id'].nil?
      query_params[:'interactionType'] = opts[:'interaction_type'] if !opts[:'interaction_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_hourly_email_tracking\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get livefire feed data
    # Get the user data for the live fire feed emails
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_live_fire_data(opts = {})
      get_live_fire_data_with_http_info(opts)
      return nil
    end

    # Get livefire feed data
    # Get the user data for the live fire feed emails
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_live_fire_data_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_live_fire_data ..."
      end
      # resource path
      local_var_path = "/emails/livefire"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_live_fire_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all quicksend templates
    # Get all quicksend templates accessible to the user.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_quick_send_templates(opts = {})
      get_quick_send_templates_with_http_info(opts)
      return nil
    end

    # Get all quicksend templates
    # Get all quicksend templates accessible to the user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_quick_send_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_quick_send_templates ..."
      end
      # resource path
      local_var_path = "/emails/quicksend/templates"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_quick_send_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the HTML for a given template
    # Get the HTML for a given template, with or without rendered variables
    # @param template_id The id of the template.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :render_variables Whether to render profile variables in the returned HTML.
    # @return [nil]
    def get_template_html_for_template_id(template_id, opts = {})
      get_template_html_for_template_id_with_http_info(template_id, opts)
      return nil
    end

    # Get the HTML for a given template
    # Get the HTML for a given template, with or without rendered variables
    # @param template_id The id of the template.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :render_variables Whether to render profile variables in the returned HTML.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_template_html_for_template_id_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_template_html_for_template_id ..."
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling EmailsApi.get_template_html_for_template_id"
      end
      # resource path
      local_var_path = "/emails/templates/{templateId}/html".sub('{' + 'templateId' + '}', template_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'renderVariables'] = opts[:'render_variables'] if !opts[:'render_variables'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_template_html_for_template_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get quicksend data
    # Get the user data for quicksender, including templates and lists.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message A message for the video content.
    # @option opts [String] :subject A subject for the video content.
    # @option opts [String] :video_id A video ID.
    # @option opts [String] :template_id A template ID.
    # @option opts [String] :comma_delim_emails Comma delimited emails
    # @return [nil]
    def get_video_quick_sender_data(opts = {})
      get_video_quick_sender_data_with_http_info(opts)
      return nil
    end

    # Get quicksend data
    # Get the user data for quicksender, including templates and lists.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message A message for the video content.
    # @option opts [String] :subject A subject for the video content.
    # @option opts [String] :video_id A video ID.
    # @option opts [String] :template_id A template ID.
    # @option opts [String] :comma_delim_emails Comma delimited emails
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_video_quick_sender_data_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.get_video_quick_sender_data ..."
      end
      # resource path
      local_var_path = "/emails/quicksend"

      # query parameters
      query_params = {}
      query_params[:'message'] = opts[:'message'] if !opts[:'message'].nil?
      query_params[:'subject'] = opts[:'subject'] if !opts[:'subject'].nil?
      query_params[:'videoId'] = opts[:'video_id'] if !opts[:'video_id'].nil?
      query_params[:'templateId'] = opts[:'template_id'] if !opts[:'template_id'].nil?
      query_params[:'commaDelimEmails'] = opts[:'comma_delim_emails'] if !opts[:'comma_delim_emails'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_video_quick_sender_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save quicksender settings
    # Save the quicksender notification and default template settings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :alert_on_play A preference setting for whether or not to notify user on quicksend email video plays.
    # @option opts [String] :alert_on_open A preference setting for whether or not to notify user on quicksend email opens.
    # @option opts [String] :template_id Id of a template to use for this send. A null value means use the default for this user.
    # @return [nil]
    def save_quick_sender_settings(opts = {})
      save_quick_sender_settings_with_http_info(opts)
      return nil
    end

    # Save quicksender settings
    # Save the quicksender notification and default template settings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :alert_on_play A preference setting for whether or not to notify user on quicksend email video plays.
    # @option opts [String] :alert_on_open A preference setting for whether or not to notify user on quicksend email opens.
    # @option opts [String] :template_id Id of a template to use for this send. A null value means use the default for this user.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def save_quick_sender_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.save_quick_sender_settings ..."
      end
      # resource path
      local_var_path = "/emails/quicksend/settings"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["alertOnPlay"] = opts[:'alert_on_play'] if !opts[:'alert_on_play'].nil?
      form_params["alertOnOpen"] = opts[:'alert_on_open'] if !opts[:'alert_on_open'].nil?
      form_params["templateId"] = opts[:'template_id'] if !opts[:'template_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#save_quick_sender_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a quicksend email
    # Send a quicksend video email to the list or users provided.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :video_id A guid id for the video.
    # @option opts [String] :email_addresses A semi-colon separated list of email addresses to send to.
    # @option opts [String] :subject Subject line for the email.
    # @option opts [String] :message Message for the body of the email.
    # @option opts [String] :list_ids An array of list ids
    # @option opts [Integer] :scheduled_send_timestamp When to schedule the send (seconds since epoch). null value means send immediately.
    # @option opts [String] :extended_properties Bool value that when checked will send back both emailId as well as extra properties
    # @option opts [String] :template_id Id of a template to use for this send. A null value means use the default for this user.
    # @option opts [String] :strip_html remove HTML elements
    # @return [nil]
    def video_quick_sender(opts = {})
      video_quick_sender_with_http_info(opts)
      return nil
    end

    # Send a quicksend email
    # Send a quicksend video email to the list or users provided.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :video_id A guid id for the video.
    # @option opts [String] :email_addresses A semi-colon separated list of email addresses to send to.
    # @option opts [String] :subject Subject line for the email.
    # @option opts [String] :message Message for the body of the email.
    # @option opts [String] :list_ids An array of list ids
    # @option opts [Integer] :scheduled_send_timestamp When to schedule the send (seconds since epoch). null value means send immediately.
    # @option opts [String] :extended_properties Bool value that when checked will send back both emailId as well as extra properties
    # @option opts [String] :template_id Id of a template to use for this send. A null value means use the default for this user.
    # @option opts [String] :strip_html remove HTML elements
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def video_quick_sender_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi.video_quick_sender ..."
      end
      # resource path
      local_var_path = "/emails/quicksend"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["videoId"] = opts[:'video_id'] if !opts[:'video_id'].nil?
      form_params["emailAddresses"] = opts[:'email_addresses'] if !opts[:'email_addresses'].nil?
      form_params["subject"] = opts[:'subject'] if !opts[:'subject'].nil?
      form_params["message"] = opts[:'message'] if !opts[:'message'].nil?
      form_params["listIds"] = opts[:'list_ids'] if !opts[:'list_ids'].nil?
      form_params["scheduledSendTimestamp"] = opts[:'scheduled_send_timestamp'] if !opts[:'scheduled_send_timestamp'].nil?
      form_params["extendedProperties"] = opts[:'extended_properties'] if !opts[:'extended_properties'].nil?
      form_params["templateId"] = opts[:'template_id'] if !opts[:'template_id'].nil?
      form_params["stripHTML"] = opts[:'strip_html'] if !opts[:'strip_html'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#video_quick_sender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
