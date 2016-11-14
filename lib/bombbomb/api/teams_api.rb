=begin
#BombBomb

#We make it easy to build relationships using simple videos.

OpenAPI spec version: 2.0.21432

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
  class TeamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add Member to Team
    # Adds a member to a team.
    # @param team_id The team id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user id of the member being added to the team.
    # @option opts [String] :user_email The email of the member being added to the team.
    # @option opts [BOOLEAN] :admin Set if the user is an admin of this team.
    # @return [String]
    def add_team_member(team_id, opts = {})
      data, _status_code, _headers = add_team_member_with_http_info(team_id, opts)
      return data
    end

    # Add Member to Team
    # Adds a member to a team.
    # @param team_id The team id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id The user id of the member being added to the team.
    # @option opts [String] :user_email The email of the member being added to the team.
    # @option opts [BOOLEAN] :admin Set if the user is an admin of this team.
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def add_team_member_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.add_team_member ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.add_team_member" if team_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/member".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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
      form_params["userId"] = opts[:'user_id'] if !opts[:'user_id'].nil?
      form_params["userEmail"] = opts[:'user_email'] if !opts[:'user_email'].nil?
      form_params["admin"] = opts[:'admin'] if !opts[:'admin'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#add_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a Jericho Send
    # Cancels a scheduled Jericho send from being sent.
    # @param jericho_id ID of the Jericho Job to cancel
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_jericho_send(jericho_id, opts = {})
      cancel_jericho_send_with_http_info(jericho_id, opts)
      return nil
    end

    # Cancel a Jericho Send
    # Cancels a scheduled Jericho send from being sent.
    # @param jericho_id ID of the Jericho Job to cancel
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_jericho_send_with_http_info(jericho_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.cancel_jericho_send ..."
      end
      # verify the required parameter 'jericho_id' is set
      fail ArgumentError, "Missing the required parameter 'jericho_id' when calling TeamsApi.cancel_jericho_send" if jericho_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/jericho/{jerichoId}".sub('{format}','json').sub('{' + 'jerichoId' + '}', jericho_id.to_s)

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
        @api_client.config.logger.debug "API called: TeamsApi#cancel_jericho_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a Subteam
    # Adds a subteam to a parent team
    # @param team_id The team id
    # @param name The subteam&#39;s name.
    # @param [Hash] opts the optional parameters
    # @return [TeamPublicRepresentation]
    def create_subteam(team_id, name, opts = {})
      data, _status_code, _headers = create_subteam_with_http_info(team_id, name, opts)
      return data
    end

    # Add a Subteam
    # Adds a subteam to a parent team
    # @param team_id The team id
    # @param name The subteam&#39;s name.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeamPublicRepresentation, Fixnum, Hash)>] TeamPublicRepresentation data, response status code and response headers
    def create_subteam_with_http_info(team_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.create_subteam ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.create_subteam" if team_id.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling TeamsApi.create_subteam" if name.nil?
      # resource path
      local_var_path = "/team/{teamId}/subteam".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TeamPublicRepresentation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#create_subteam\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Subteam
    # Deletes a subteam
    # @param team_id The team id
    # @param subteam_id The subteam you wish to delete.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def delete_subteam(team_id, subteam_id, opts = {})
      data, _status_code, _headers = delete_subteam_with_http_info(team_id, subteam_id, opts)
      return data
    end

    # Delete Subteam
    # Deletes a subteam
    # @param team_id The team id
    # @param subteam_id The subteam you wish to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def delete_subteam_with_http_info(team_id, subteam_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.delete_subteam ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.delete_subteam" if team_id.nil?
      # verify the required parameter 'subteam_id' is set
      fail ArgumentError, "Missing the required parameter 'subteam_id' when calling TeamsApi.delete_subteam" if subteam_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/subteam".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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
      form_params["subteamId"] = subteam_id

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#delete_subteam\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists team assets
    # Returns a collection of assets
    # @param asset_type The type of assets.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_id The team containing the assets.
    # @option opts [String] :auto_tag_name The auto tag name containing the assets.
    # @option opts [String] :page_size The number of items to retrieve in a single db query.
    # @option opts [String] :page Zero-based index of the page of data to retrieve from the db.
    # @option opts [String] :search Search words.
    # @return [InlineResponse200]
    def get_client_group_assets(asset_type, opts = {})
      data, _status_code, _headers = get_client_group_assets_with_http_info(asset_type, opts)
      return data
    end

    # Lists team assets
    # Returns a collection of assets
    # @param asset_type The type of assets.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_id The team containing the assets.
    # @option opts [String] :auto_tag_name The auto tag name containing the assets.
    # @option opts [String] :page_size The number of items to retrieve in a single db query.
    # @option opts [String] :page Zero-based index of the page of data to retrieve from the db.
    # @option opts [String] :search Search words.
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def get_client_group_assets_with_http_info(asset_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.get_client_group_assets ..."
      end
      # verify the required parameter 'asset_type' is set
      fail ArgumentError, "Missing the required parameter 'asset_type' when calling TeamsApi.get_client_group_assets" if asset_type.nil?
      # verify enum value
      unless ['email', 'video'].include?(asset_type)
        fail ArgumentError, "invalid value for 'asset_type', must be one of email, video"
      end
      # resource path
      local_var_path = "/team/assets/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'assetType'] = asset_type
      query_params[:'teamId'] = opts[:'team_id'] if !opts[:'team_id'].nil?
      query_params[:'autoTagName'] = opts[:'auto_tag_name'] if !opts[:'auto_tag_name'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

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
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_client_group_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Jericho Sends
    # Lists Jericho sends, both pending and sent.
    # @param team_id The team whose Jericho sends you wish to see.
    # @param [Hash] opts the optional parameters
    # @return [Array<JerichoConfiguration>]
    def get_jericho_sends(team_id, opts = {})
      data, _status_code, _headers = get_jericho_sends_with_http_info(team_id, opts)
      return data
    end

    # List Jericho Sends
    # Lists Jericho sends, both pending and sent.
    # @param team_id The team whose Jericho sends you wish to see.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<JerichoConfiguration>, Fixnum, Hash)>] Array<JerichoConfiguration> data, response status code and response headers
    def get_jericho_sends_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.get_jericho_sends ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.get_jericho_sends" if team_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/jericho".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'Array<JerichoConfiguration>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_jericho_sends\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets Jericho performance statistics
    # Returns an aggregate view of the performance of a Jericho send
    # @param jericho_id ID of the Jericho job
    # @param team_id ID of team through which Jericho was sent
    # @param [Hash] opts the optional parameters
    # @return [JerichoPerformance]
    def get_jericho_stats(jericho_id, team_id, opts = {})
      data, _status_code, _headers = get_jericho_stats_with_http_info(jericho_id, team_id, opts)
      return data
    end

    # Gets Jericho performance statistics
    # Returns an aggregate view of the performance of a Jericho send
    # @param jericho_id ID of the Jericho job
    # @param team_id ID of team through which Jericho was sent
    # @param [Hash] opts the optional parameters
    # @return [Array<(JerichoPerformance, Fixnum, Hash)>] JerichoPerformance data, response status code and response headers
    def get_jericho_stats_with_http_info(jericho_id, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.get_jericho_stats ..."
      end
      # verify the required parameter 'jericho_id' is set
      fail ArgumentError, "Missing the required parameter 'jericho_id' when calling TeamsApi.get_jericho_stats" if jericho_id.nil?
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.get_jericho_stats" if team_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/jericho/{jerichoId}/performance".sub('{format}','json').sub('{' + 'jerichoId' + '}', jericho_id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'JerichoPerformance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_jericho_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Subteams
    # Returns a collection of subteams for a parent team
    # @param team_id The team id
    # @param [Hash] opts the optional parameters
    # @return [Array<TeamPublicRepresentation>]
    def get_subteams(team_id, opts = {})
      data, _status_code, _headers = get_subteams_with_http_info(team_id, opts)
      return data
    end

    # List Subteams
    # Returns a collection of subteams for a parent team
    # @param team_id The team id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TeamPublicRepresentation>, Fixnum, Hash)>] Array<TeamPublicRepresentation> data, response status code and response headers
    def get_subteams_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.get_subteams ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.get_subteams" if team_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/subteam".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'Array<TeamPublicRepresentation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_subteams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a Jericho send.
    # Sends email content on behalf of members of a client group. There are two forms this send can take:         Static Email, and Video Prompt. Static emails require only an emailId.         Video Prompts build emails dynamically and require most of the other fields.         You must be an administrator of a Team Account to use this method.
    # @param config JSON representing a Jericho configuration
    # @param team_id The ID of the team.
    # @param [Hash] opts the optional parameters
    # @return [JerichoConfiguration]
    def queue_jericho_send(config, team_id, opts = {})
      data, _status_code, _headers = queue_jericho_send_with_http_info(config, team_id, opts)
      return data
    end

    # Creates a Jericho send.
    # Sends email content on behalf of members of a client group. There are two forms this send can take:         Static Email, and Video Prompt. Static emails require only an emailId.         Video Prompts build emails dynamically and require most of the other fields.         You must be an administrator of a Team Account to use this method.
    # @param config JSON representing a Jericho configuration
    # @param team_id The ID of the team.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JerichoConfiguration, Fixnum, Hash)>] JerichoConfiguration data, response status code and response headers
    def queue_jericho_send_with_http_info(config, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.queue_jericho_send ..."
      end
      # verify the required parameter 'config' is set
      fail ArgumentError, "Missing the required parameter 'config' when calling TeamsApi.queue_jericho_send" if config.nil?
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.queue_jericho_send" if team_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/jericho".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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
      post_body = @api_client.object_to_http_body(config)
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JerichoConfiguration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#queue_jericho_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove Member from Team
    # Removes a member from a team.
    # @param team_id The team id
    # @param user_id The user id of the member being removed.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def remove_member_from_team(team_id, user_id, opts = {})
      data, _status_code, _headers = remove_member_from_team_with_http_info(team_id, user_id, opts)
      return data
    end

    # Remove Member from Team
    # Removes a member from a team.
    # @param team_id The team id
    # @param user_id The user id of the member being removed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def remove_member_from_team_with_http_info(team_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.remove_member_from_team ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.remove_member_from_team" if team_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling TeamsApi.remove_member_from_team" if user_id.nil?
      # resource path
      local_var_path = "/team/{teamId}/member/{userId}".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#remove_member_from_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a team
    # Update fields on a team
    # @param team_id The team id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the team
    # @return [TeamPublicRepresentation]
    def update_team(team_id, opts = {})
      data, _status_code, _headers = update_team_with_http_info(team_id, opts)
      return data
    end

    # Update a team
    # Update fields on a team
    # @param team_id The team id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the team
    # @return [Array<(TeamPublicRepresentation, Fixnum, Hash)>] TeamPublicRepresentation data, response status code and response headers
    def update_team_with_http_info(team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi.update_team ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling TeamsApi.update_team" if team_id.nil?
      # resource path
      local_var_path = "/team/{teamId}".sub('{format}','json').sub('{' + 'teamId' + '}', team_id.to_s)

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
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BBOAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TeamPublicRepresentation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#update_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
