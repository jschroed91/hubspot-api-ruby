=begin
#Webhooks API

#Provides a way for apps to subscribe to certain change events in HubSpot. Once configured, apps will receive event payloads containing details about the changes at a specified target URL. There can only be one target URL for receiving event notifications per app.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module Hubspot
  module Webhooks
    class SettingsApi
      attr_accessor :api_client

      def initialize(api_client = ApiClient.default)
        @api_client = api_client
      end
      # Clear webhook settings
      # Resets webhook target URL to empty, and max concurrency limit to `0` for the given app. This will effectively pause all webhook subscriptions until new settings are provided.
      # @param app_id [Integer] The ID of the target app.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def clear(app_id, opts = {})
        clear_with_http_info(app_id, opts)
        nil
      end

      # Clear webhook settings
      # Resets webhook target URL to empty, and max concurrency limit to &#x60;0&#x60; for the given app. This will effectively pause all webhook subscriptions until new settings are provided.
      # @param app_id [Integer] The ID of the target app.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
      def clear_with_http_info(app_id, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SettingsApi.clear ...'
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.clear"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['*/*'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] 

        # return_type
        return_type = opts[:return_type] 

        # auth_names
        auth_names = opts[:auth_names] || ['hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SettingsApi#clear\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # Configure webhook settings
      # Used to set the webhook target URL and max concurrency limit for the given app.
      # @param app_id [Integer] The ID of the target app.
      # @param settings_change_request [SettingsChangeRequest] Settings state to create new with or replace existing settings with.
      # @param [Hash] opts the optional parameters
      # @return [SettingsResponse]
      def configure(app_id, settings_change_request, opts = {})
        data, _status_code, _headers = configure_with_http_info(app_id, settings_change_request, opts)
        data
      end

      # Configure webhook settings
      # Used to set the webhook target URL and max concurrency limit for the given app.
      # @param app_id [Integer] The ID of the target app.
      # @param settings_change_request [SettingsChangeRequest] Settings state to create new with or replace existing settings with.
      # @param [Hash] opts the optional parameters
      # @return [Array<(SettingsResponse, Integer, Hash)>] SettingsResponse data, response status code and response headers
      def configure_with_http_info(app_id, settings_change_request, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SettingsApi.configure ...'
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.configure"
        end
        # verify the required parameter 'settings_change_request' is set
        if @api_client.config.client_side_validation && settings_change_request.nil?
          fail ArgumentError, "Missing the required parameter 'settings_change_request' when calling SettingsApi.configure"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] || @api_client.object_to_http_body(settings_change_request) 

        # return_type
        return_type = opts[:return_type] || 'SettingsResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SettingsApi#configure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end

      # Get webhook settings
      # Returns the current state of webhook settings for the given app. These settings include the app's configured target URL and max concurrency limit.
      # @param app_id [Integer] The ID of the target app.
      # @param [Hash] opts the optional parameters
      # @return [SettingsResponse]
      def get_all(app_id, opts = {})
        data, _status_code, _headers = get_all_with_http_info(app_id, opts)
        data
      end

      # Get webhook settings
      # Returns the current state of webhook settings for the given app. These settings include the app&#39;s configured target URL and max concurrency limit.
      # @param app_id [Integer] The ID of the target app.
      # @param [Hash] opts the optional parameters
      # @return [Array<(SettingsResponse, Integer, Hash)>] SettingsResponse data, response status code and response headers
      def get_all_with_http_info(app_id, opts = {})
        if @api_client.config.debugging
          @api_client.config.logger.debug 'Calling API: SettingsApi.get_all ...'
        end
        # verify the required parameter 'app_id' is set
        if @api_client.config.client_side_validation && app_id.nil?
          fail ArgumentError, "Missing the required parameter 'app_id' when calling SettingsApi.get_all"
        end
        # resource path
        local_var_path = '/webhooks/v3/{appId}/settings'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

        # query parameters
        query_params = opts[:query_params] || {}

        # header parameters
        header_params = opts[:header_params] || {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

        # form parameters
        form_params = opts[:form_params] || {}

        # http body (model)
        post_body = opts[:body] 

        # return_type
        return_type = opts[:return_type] || 'SettingsResponse' 

        # auth_names
        auth_names = opts[:auth_names] || ['hapikey']

        new_options = opts.merge(
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => return_type
        )

        data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
        if @api_client.config.debugging
          @api_client.config.logger.debug "API called: SettingsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end