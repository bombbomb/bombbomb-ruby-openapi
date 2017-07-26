=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.24005

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
  class AutomationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Automation Email Stats
    # Get Automation Email Stats
    # @param drip_id The id of the drip
    # @param drip_drop_id The id of the drip drop
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_drip_drop_stats(drip_id, drip_drop_id, opts = {})
      get_drip_drop_stats_with_http_info(drip_id, drip_drop_id, opts)
      return nil
    end

    # Get Automation Email Stats
    # Get Automation Email Stats
    # @param drip_id The id of the drip
    # @param drip_drop_id The id of the drip drop
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_drip_drop_stats_with_http_info(drip_id, drip_drop_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AutomationsApi.get_drip_drop_stats ..."
      end
      # verify the required parameter 'drip_id' is set
      fail ArgumentError, "Missing the required parameter 'drip_id' when calling AutomationsApi.get_drip_drop_stats" if drip_id.nil?
      # verify the required parameter 'drip_drop_id' is set
      fail ArgumentError, "Missing the required parameter 'drip_drop_id' when calling AutomationsApi.get_drip_drop_stats" if drip_drop_id.nil?
      # resource path
      local_var_path = "/automation/{dripId}/dripdrop/{dripDropId}/stats".sub('{format}','json').sub('{' + 'dripId' + '}', drip_id.to_s).sub('{' + 'dripDropId' + '}', drip_drop_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationsApi#get_drip_drop_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Automation Stats
    # Get Automation Stats
    # @param id The id of the automation
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_drip_stats(id, opts = {})
      get_drip_stats_with_http_info(id, opts)
      return nil
    end

    # Get Automation Stats
    # Get Automation Stats
    # @param id The id of the automation
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_drip_stats_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AutomationsApi.get_drip_stats ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AutomationsApi.get_drip_stats" if id.nil?
      # resource path
      local_var_path = "/automation/{id}/stats".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationsApi#get_drip_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
