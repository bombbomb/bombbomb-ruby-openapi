=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.0

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
  class UtilitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an OAuth Client
    # Creates an OAuth Client managed by the user
    # @param name The name of the OAuth client. e.g. MyCrm DEV, or MyCrm PROD
    # @param redirect_uri The URI to direct the client to after logging in.
    # @param [Hash] opts the optional parameters
    # @return [OAuthClient]
    def create_o_auth_client(name, redirect_uri, opts = {})
      data, _status_code, _headers = create_o_auth_client_with_http_info(name, redirect_uri, opts)
      return data
    end

    # Create an OAuth Client
    # Creates an OAuth Client managed by the user
    # @param name The name of the OAuth client. e.g. MyCrm DEV, or MyCrm PROD
    # @param redirect_uri The URI to direct the client to after logging in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OAuthClient, Fixnum, Hash)>] OAuthClient data, response status code and response headers
    def create_o_auth_client_with_http_info(name, redirect_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilitiesApi.create_o_auth_client ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling UtilitiesApi.create_o_auth_client" if name.nil?
      # verify the required parameter 'redirect_uri' is set
      fail ArgumentError, "Missing the required parameter 'redirect_uri' when calling UtilitiesApi.create_o_auth_client" if redirect_uri.nil?
      # resource path
      local_var_path = "/oauthclient".sub('{format}','json')

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
      form_params["name"] = name
      form_params["redirectUri"] = redirect_uri

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OAuthClient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilitiesApi#create_o_auth_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an OAuth Client
    # Deletes an OAuth Client managed by the user
    # @param id The id of the OAuth Client
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_o_auth_client(id, opts = {})
      delete_o_auth_client_with_http_info(id, opts)
      return nil
    end

    # Delete an OAuth Client
    # Deletes an OAuth Client managed by the user
    # @param id The id of the OAuth Client
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_o_auth_client_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilitiesApi.delete_o_auth_client ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UtilitiesApi.delete_o_auth_client" if id.nil?
      # resource path
      local_var_path = "/oauthclient/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilitiesApi#delete_o_auth_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists OAuth Clients
    # Enumerates OAuth Clients managed by the user
    # @param [Hash] opts the optional parameters
    # @return [Array<OAuthClient>]
    def get_o_auth_clients(opts = {})
      data, _status_code, _headers = get_o_auth_clients_with_http_info(opts)
      return data
    end

    # Lists OAuth Clients
    # Enumerates OAuth Clients managed by the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OAuthClient>, Fixnum, Hash)>] Array<OAuthClient> data, response status code and response headers
    def get_o_auth_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilitiesApi.get_o_auth_clients ..."
      end
      # resource path
      local_var_path = "/oauthclient".sub('{format}','json')

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
        :return_type => 'Array<OAuthClient>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilitiesApi#get_o_auth_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Describes this api
    # Describes methods available through the API.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_spec(opts = {})
      get_spec_with_http_info(opts)
      return nil
    end

    # Describes this api
    # Describes methods available through the API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_spec_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilitiesApi.get_spec ..."
      end
      # resource path
      local_var_path = "/spec".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilitiesApi#get_spec\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
