=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.21454

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module BombBomb
  class PromptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Prompts user to send a video
    # Sends the account holder an email prompting them to add a video to a scheduled outgoing message. Recipients, content and timing is all preset for the user.
    # @param prompt The Video Email Prompt to be created
    # @param [Hash] opts the optional parameters
    # @return [VideoEmailPrompt]
    def create_video_email_prompt(prompt, opts = {})
      data, _status_code, _headers = create_video_email_prompt_with_http_info(prompt, opts)
      return data
    end

    # Prompts user to send a video
    # Sends the account holder an email prompting them to add a video to a scheduled outgoing message. Recipients, content and timing is all preset for the user.
    # @param prompt The Video Email Prompt to be created
    # @param [Hash] opts the optional parameters
    # @return [Array<(VideoEmailPrompt, Fixnum, Hash)>] VideoEmailPrompt data, response status code and response headers
    def create_video_email_prompt_with_http_info(prompt, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PromptsApi.create_video_email_prompt ..."
      end
      # verify the required parameter 'prompt' is set
      fail ArgumentError, "Missing the required parameter 'prompt' when calling PromptsApi.create_video_email_prompt" if prompt.nil?
      # resource path
      local_var_path = "/prompt".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(prompt)
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VideoEmailPrompt')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PromptsApi#create_video_email_prompt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a prompt
    # Gets a prompt
    # @param id The Id of the prompt
    # @param [Hash] opts the optional parameters
    # @return [VideoEmailPrompt]
    def get_video_email_prompt(id, opts = {})
      data, _status_code, _headers = get_video_email_prompt_with_http_info(id, opts)
      return data
    end

    # Gets a prompt
    # Gets a prompt
    # @param id The Id of the prompt
    # @param [Hash] opts the optional parameters
    # @return [Array<(VideoEmailPrompt, Fixnum, Hash)>] VideoEmailPrompt data, response status code and response headers
    def get_video_email_prompt_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PromptsApi.get_video_email_prompt ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PromptsApi.get_video_email_prompt" if id.nil?
      # resource path
      local_var_path = "/prompt/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :auth_names => auth_names,
        :return_type => 'VideoEmailPrompt')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PromptsApi#get_video_email_prompt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Respond to a prompt
    # Respond to a prompt by either adding a video, sending without a video or cancelling the prompt.
    # @param id The id of the prompt.
    # @param choice The users&#39; selection. Can be: WithVideo, WithoutVideo, Cancel
    # @param [Hash] opts the optional parameters
    # @option opts [String] :video_id The id of the video.
    # @return [VideoEmailPrompt]
    def respond_to_video_email_prompt(id, choice, opts = {})
      data, _status_code, _headers = respond_to_video_email_prompt_with_http_info(id, choice, opts)
      return data
    end

    # Respond to a prompt
    # Respond to a prompt by either adding a video, sending without a video or cancelling the prompt.
    # @param id The id of the prompt.
    # @param choice The users&#39; selection. Can be: WithVideo, WithoutVideo, Cancel
    # @param [Hash] opts the optional parameters
    # @option opts [String] :video_id The id of the video.
    # @return [Array<(VideoEmailPrompt, Fixnum, Hash)>] VideoEmailPrompt data, response status code and response headers
    def respond_to_video_email_prompt_with_http_info(id, choice, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PromptsApi.respond_to_video_email_prompt ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PromptsApi.respond_to_video_email_prompt" if id.nil?
      # verify the required parameter 'choice' is set
      fail ArgumentError, "Missing the required parameter 'choice' when calling PromptsApi.respond_to_video_email_prompt" if choice.nil?
      # verify enum value
      unless ['WithVideo', 'WithoutVideo', 'Cancel'].include?(choice)
        fail ArgumentError, "invalid value for 'choice', must be one of WithVideo, WithoutVideo, Cancel"
      end
      # resource path
      local_var_path = "/prompt/{id}/response".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}
      form_params["choice"] = choice
      form_params["videoId"] = opts[:'video_id'] if !opts[:'video_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VideoEmailPrompt')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PromptsApi#respond_to_video_email_prompt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
