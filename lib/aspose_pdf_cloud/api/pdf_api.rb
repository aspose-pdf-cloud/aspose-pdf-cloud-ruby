=begin
--------------------------------------------------------------------------------------------------------------------
  Copyright (c) 2018 Aspose.PDF Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--------------------------------------------------------------------------------------------------------------------
=end

require "uri"

module AsposePdfCloud
  class PdfApi
    attr_accessor :api_client

    def initialize(app_key, app_sid, api_client = ApiClient.default)
      @api_client = api_client
      @api_client.config.app_key = app_key
      @api_client.config.app_sid = app_sid
    end


    # Delete document field by name.
    # 
    # @param name The document name.
    # @param field_name The field name/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def delete_field(name, field_name, opts = {})
      data, _status_code, _headers = delete_field_with_http_info(name, field_name, opts)
      return data
    end

    # Delete document field by name.
    # 
    # @param name The document name.
    # @param field_name The field name/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def delete_field_with_http_info(name, field_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.delete_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.delete_field"
      end
      # verify the required parameter 'field_name' is set
      if @api_client.config.client_side_validation && field_name.nil?
        fail ArgumentError, "Missing the required parameter 'field_name' when calling PdfApi.delete_field"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields/{fieldName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'fieldName' + '}', field_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#delete_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete document page by its number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def delete_page(name, page_number, opts = {})
      data, _status_code, _headers = delete_page_with_http_info(name, page_number, opts)
      return data
    end

    # Delete document page by its number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def delete_page_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.delete_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.delete_page"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.delete_page"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#delete_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete custom document properties.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [SaaSposeResponse]
    def delete_properties(name, opts = {})
      data, _status_code, _headers = delete_properties_with_http_info(name, opts)
      return data
    end

    # Delete custom document properties.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def delete_properties_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.delete_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.delete_properties"
      end
      # resource path
      local_var_path = "/pdf/{name}/documentproperties".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#delete_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete document property.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [SaaSposeResponse]
    def delete_property(name, property_name, opts = {})
      data, _status_code, _headers = delete_property_with_http_info(name, property_name, opts)
      return data
    end

    # Delete document property.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def delete_property_with_http_info(name, property_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.delete_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.delete_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling PdfApi.delete_property"
      end
      # resource path
      local_var_path = "/pdf/{name}/documentproperties/{propertyName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#delete_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read common document info or convert to some format if the format specified.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :out_path Path to save result
    # @return [File]
    def get_document(name, opts = {})
      data, _status_code, _headers = get_document_with_http_info(name, opts)
      return data
    end

    # Read common document info or convert to some format if the format specified.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :out_path Path to save result
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_document"
      end
      # resource path
      local_var_path = "/pdf/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'outPath'] = opts[:'out_path'] if !opts[:'out_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document attachment info by its index.
    # 
    # @param name The document name.
    # @param attachment_index The attachment index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AttachmentResponse]
    def get_document_attachment_by_index(name, attachment_index, opts = {})
      data, _status_code, _headers = get_document_attachment_by_index_with_http_info(name, attachment_index, opts)
      return data
    end

    # Read document attachment info by its index.
    # 
    # @param name The document name.
    # @param attachment_index The attachment index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(AttachmentResponse, Fixnum, Hash)>] AttachmentResponse data, response status code and response headers
    def get_document_attachment_by_index_with_http_info(name, attachment_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_document_attachment_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_document_attachment_by_index"
      end
      # verify the required parameter 'attachment_index' is set
      if @api_client.config.client_side_validation && attachment_index.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_index' when calling PdfApi.get_document_attachment_by_index"
      end
      # resource path
      local_var_path = "/pdf/{name}/attachments/{attachmentIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'attachmentIndex' + '}', attachment_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_document_attachment_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document attachments info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AttachmentsResponse]
    def get_document_attachments(name, opts = {})
      data, _status_code, _headers = get_document_attachments_with_http_info(name, opts)
      return data
    end

    # Read document attachments info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(AttachmentsResponse, Fixnum, Hash)>] AttachmentsResponse data, response status code and response headers
    def get_document_attachments_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_document_attachments ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_document_attachments"
      end
      # resource path
      local_var_path = "/pdf/{name}/attachments".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_document_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document bookmark/bookmarks (including children).
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bookmark_path The bookmark path. Leave it empty if you want to get all the bookmarks in the document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_document_bookmarks(name, opts = {})
      data, _status_code, _headers = get_document_bookmarks_with_http_info(name, opts)
      return data
    end

    # Read document bookmark/bookmarks (including children).
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bookmark_path The bookmark path. Leave it empty if you want to get all the bookmarks in the document.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_bookmarks_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_document_bookmarks ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_document_bookmarks"
      end
      # resource path
      local_var_path = "/pdf/{name}/bookmarks".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'bookmarkPath'] = opts[:'bookmark_path'] if !opts[:'bookmark_path'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_document_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document properties.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentPropertiesResponse]
    def get_document_properties(name, opts = {})
      data, _status_code, _headers = get_document_properties_with_http_info(name, opts)
      return data
    end

    # Read document properties.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(DocumentPropertiesResponse, Fixnum, Hash)>] DocumentPropertiesResponse data, response status code and response headers
    def get_document_properties_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_document_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_document_properties"
      end
      # resource path
      local_var_path = "/pdf/{name}/documentproperties".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_document_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document property by name.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentPropertyResponse]
    def get_document_property(name, property_name, opts = {})
      data, _status_code, _headers = get_document_property_with_http_info(name, property_name, opts)
      return data
    end

    # Read document property by name.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(DocumentPropertyResponse, Fixnum, Hash)>] DocumentPropertyResponse data, response status code and response headers
    def get_document_property_with_http_info(name, property_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling PdfApi.get_document_property"
      end
      # resource path
      local_var_path = "/pdf/{name}/documentproperties/{propertyName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a specific file 
    # 
    # @param path Path of the file including the file name and extension e.g. /file.ext
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id File&#39;s version
    # @option opts [String] :storage User&#39;s storage name
    # @return [File]
    def get_download(path, opts = {})
      data, _status_code, _headers = get_download_with_http_info(path, opts)
      return data
    end

    # Download a specific file 
    # 
    # @param path Path of the file including the file name and extension e.g. /file.ext
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id File&#39;s version
    # @option opts [String] :storage User&#39;s storage name
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_download_with_http_info(path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_download ..."
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling PdfApi.get_download"
      end
      # resource path
      local_var_path = "/storage/file"

      # query parameters
      query_params = {}
      query_params[:'path'] = path
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download document attachment content by its index.
    # 
    # @param name The document name.
    # @param attachment_index The attachment index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_download_document_attachment_by_index(name, attachment_index, opts = {})
      data, _status_code, _headers = get_download_document_attachment_by_index_with_http_info(name, attachment_index, opts)
      return data
    end

    # Download document attachment content by its index.
    # 
    # @param name The document name.
    # @param attachment_index The attachment index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_download_document_attachment_by_index_with_http_info(name, attachment_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_download_document_attachment_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_download_document_attachment_by_index"
      end
      # verify the required parameter 'attachment_index' is set
      if @api_client.config.client_side_validation && attachment_index.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_index' when calling PdfApi.get_download_document_attachment_by_index"
      end
      # resource path
      local_var_path = "/pdf/{name}/attachments/{attachmentIndex}/download".sub('{' + 'name' + '}', name.to_s).sub('{' + 'attachmentIndex' + '}', attachment_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_download_document_attachment_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.epub)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_epub_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_epub_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.epub)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_epub_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_epub_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_epub_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/epub"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_epub_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get document field by name.
    # 
    # @param name The document name.
    # @param field_name The field name/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldResponse]
    def get_field(name, field_name, opts = {})
      data, _status_code, _headers = get_field_with_http_info(name, field_name, opts)
      return data
    end

    # Get document field by name.
    # 
    # @param name The document name.
    # @param field_name The field name/
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(FieldResponse, Fixnum, Hash)>] FieldResponse data, response status code and response headers
    def get_field_with_http_info(name, field_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_field"
      end
      # verify the required parameter 'field_name' is set
      if @api_client.config.client_side_validation && field_name.nil?
        fail ArgumentError, "Missing the required parameter 'field_name' when calling PdfApi.get_field"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields/{fieldName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'fieldName' + '}', field_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get document fields.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldsResponse]
    def get_fields(name, opts = {})
      data, _status_code, _headers = get_fields_with_http_info(name, opts)
      return data
    end

    # Get document fields.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(FieldsResponse, Fixnum, Hash)>] FieldsResponse data, response status code and response headers
    def get_fields_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_fields"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read page fragment.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_fragment(name, page_number, fragment_number, opts = {})
      data, _status_code, _headers = get_fragment_with_http_info(name, page_number, fragment_number, opts)
      return data
    end

    # Read page fragment.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def get_fragment_with_http_info(name, page_number, fragment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_fragment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_fragment"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_fragment"
      end
      # verify the required parameter 'fragment_number' is set
      if @api_client.config.client_side_validation && fragment_number.nil?
        fail ArgumentError, "Missing the required parameter 'fragment_number' when calling PdfApi.get_fragment"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if !opts[:'with_empty'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_fragment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read page fragment text format.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextFormatResponse]
    def get_fragment_text_format(name, page_number, fragment_number, opts = {})
      data, _status_code, _headers = get_fragment_text_format_with_http_info(name, page_number, fragment_number, opts)
      return data
    end

    # Read page fragment text format.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextFormatResponse, Fixnum, Hash)>] TextFormatResponse data, response status code and response headers
    def get_fragment_text_format_with_http_info(name, page_number, fragment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_fragment_text_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_fragment_text_format"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_fragment_text_format"
      end
      # verify the required parameter 'fragment_number' is set
      if @api_client.config.client_side_validation && fragment_number.nil?
        fail ArgumentError, "Missing the required parameter 'fragment_number' when calling PdfApi.get_fragment_text_format"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/textFormat".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_fragment_text_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read page fragments.
    # 
    # @param name 
    # @param page_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_fragments(name, page_number, opts = {})
      data, _status_code, _headers = get_fragments_with_http_info(name, page_number, opts)
      return data
    end

    # Read page fragments.
    # 
    # @param name 
    # @param page_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def get_fragments_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_fragments ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_fragments"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_fragments"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/fragments".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if !opts[:'with_empty'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_fragments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert HTML file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.zip)
    # @param html_file_name Name of HTML file in ZIP.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @return [File]
    def get_html_in_storage_to_pdf(src_path, html_file_name, opts = {})
      data, _status_code, _headers = get_html_in_storage_to_pdf_with_http_info(src_path, html_file_name, opts)
      return data
    end

    # Convert HTML file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.zip)
    # @param html_file_name Name of HTML file in ZIP.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_html_in_storage_to_pdf_with_http_info(src_path, html_file_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_html_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_html_in_storage_to_pdf"
      end
      # verify the required parameter 'html_file_name' is set
      if @api_client.config.client_side_validation && html_file_name.nil?
        fail ArgumentError, "Missing the required parameter 'html_file_name' when calling PdfApi.get_html_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/html"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'htmlFileName'] = html_file_name
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'isLandscape'] = opts[:'is_landscape'] if !opts[:'is_landscape'].nil?
      query_params[:'marginLeft'] = opts[:'margin_left'] if !opts[:'margin_left'].nil?
      query_params[:'marginBottom'] = opts[:'margin_bottom'] if !opts[:'margin_bottom'].nil?
      query_params[:'marginRight'] = opts[:'margin_right'] if !opts[:'margin_right'].nil?
      query_params[:'marginTop'] = opts[:'margin_top'] if !opts[:'margin_top'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_html_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract document image in format specified.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Image format to convert, if not specified the common image data is read.
    # @option opts [Integer] :width The converted image width. (default to 0)
    # @option opts [Integer] :height The converted image height. (default to 0)
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_image(name, page_number, image_number, opts = {})
      data, _status_code, _headers = get_image_with_http_info(name, page_number, image_number, opts)
      return data
    end

    # Extract document image in format specified.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Image format to convert, if not specified the common image data is read.
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_image_with_http_info(name, page_number, image_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_image ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_image"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_image"
      end
      # verify the required parameter 'image_number' is set
      if @api_client.config.client_side_validation && image_number.nil?
        fail ArgumentError, "Missing the required parameter 'image_number' when calling PdfApi.get_image"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'imageNumber' + '}', image_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document images.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [ImagesResponse]
    def get_images(name, page_number, opts = {})
      data, _status_code, _headers = get_images_with_http_info(name, page_number, opts)
      return data
    end

    # Read document images.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(ImagesResponse, Fixnum, Hash)>] ImagesResponse data, response status code and response headers
    def get_images_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_images ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_images"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_images"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImagesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.tex)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_la_te_x_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_la_te_x_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.tex)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_la_te_x_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_la_te_x_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_la_te_x_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/latex"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_la_te_x_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert MHT file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.mht)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_mht_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_mht_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert MHT file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.mht)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_mht_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_mht_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_mht_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/mht"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_mht_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to format specified.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert if specified.
    # @option opts [Integer] :width The converted image width. (default to 0)
    # @option opts [Integer] :height The converted image height. (default to 0)
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page(name, page_number, opts = {})
      data, _status_code, _headers = get_page_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to format specified.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert if specified.
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document page annotation by its number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param annotation_number The annotation number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AnnotationResponse]
    def get_page_annotation(name, page_number, annotation_number, opts = {})
      data, _status_code, _headers = get_page_annotation_with_http_info(name, page_number, annotation_number, opts)
      return data
    end

    # Read document page annotation by its number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param annotation_number The annotation number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(AnnotationResponse, Fixnum, Hash)>] AnnotationResponse data, response status code and response headers
    def get_page_annotation_with_http_info(name, page_number, annotation_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_annotation ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_annotation"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_annotation"
      end
      # verify the required parameter 'annotation_number' is set
      if @api_client.config.client_side_validation && annotation_number.nil?
        fail ArgumentError, "Missing the required parameter 'annotation_number' when calling PdfApi.get_page_annotation"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/annotations/{annotationNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'annotationNumber' + '}', annotation_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AnnotationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_annotation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read documant page annotations.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [AnnotationsResponse]
    def get_page_annotations(name, page_number, opts = {})
      data, _status_code, _headers = get_page_annotations_with_http_info(name, page_number, opts)
      return data
    end

    # Read documant page annotations.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(AnnotationsResponse, Fixnum, Hash)>] AnnotationsResponse data, response status code and response headers
    def get_page_annotations_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_annotations ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_annotations"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_annotations"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/annotations".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AnnotationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_annotations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Bmp image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_convert_to_bmp(name, page_number, opts = {})
      data, _status_code, _headers = get_page_convert_to_bmp_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to Bmp image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_convert_to_bmp_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_convert_to_bmp ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_convert_to_bmp"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_convert_to_bmp"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/bmp".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_convert_to_bmp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Emf image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_convert_to_emf(name, page_number, opts = {})
      data, _status_code, _headers = get_page_convert_to_emf_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to Emf image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_convert_to_emf_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_convert_to_emf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_convert_to_emf"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_convert_to_emf"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/emf".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_convert_to_emf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Gif image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_convert_to_gif(name, page_number, opts = {})
      data, _status_code, _headers = get_page_convert_to_gif_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to Gif image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_convert_to_gif_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_convert_to_gif ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_convert_to_gif"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_convert_to_gif"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/gif".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_convert_to_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Jpeg image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_convert_to_jpeg(name, page_number, opts = {})
      data, _status_code, _headers = get_page_convert_to_jpeg_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to Jpeg image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_convert_to_jpeg_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_convert_to_jpeg ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_convert_to_jpeg"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_convert_to_jpeg"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/jpeg".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_convert_to_jpeg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Png image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_convert_to_png(name, page_number, opts = {})
      data, _status_code, _headers = get_page_convert_to_png_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to Png image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_convert_to_png_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_convert_to_png ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_convert_to_png"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_convert_to_png"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/png".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_convert_to_png\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Tiff image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page_convert_to_tiff(name, page_number, opts = {})
      data, _status_code, _headers = get_page_convert_to_tiff_with_http_info(name, page_number, opts)
      return data
    end

    # Convert document page to Tiff image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_page_convert_to_tiff_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_convert_to_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_convert_to_tiff"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_convert_to_tiff"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/tiff".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_convert_to_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document page link annotation by its index.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param link_index The link index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [LinkAnnotationResponse]
    def get_page_link_annotation_by_index(name, page_number, link_index, opts = {})
      data, _status_code, _headers = get_page_link_annotation_by_index_with_http_info(name, page_number, link_index, opts)
      return data
    end

    # Read document page link annotation by its index.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param link_index The link index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(LinkAnnotationResponse, Fixnum, Hash)>] LinkAnnotationResponse data, response status code and response headers
    def get_page_link_annotation_by_index_with_http_info(name, page_number, link_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_link_annotation_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_link_annotation_by_index"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_link_annotation_by_index"
      end
      # verify the required parameter 'link_index' is set
      if @api_client.config.client_side_validation && link_index.nil?
        fail ArgumentError, "Missing the required parameter 'link_index' when calling PdfApi.get_page_link_annotation_by_index"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/links/{linkIndex}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'linkIndex' + '}', link_index.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LinkAnnotationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_link_annotation_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document page link annotations.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [LinkAnnotationsResponse]
    def get_page_link_annotations(name, page_number, opts = {})
      data, _status_code, _headers = get_page_link_annotations_with_http_info(name, page_number, opts)
      return data
    end

    # Read document page link annotations.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(LinkAnnotationsResponse, Fixnum, Hash)>] LinkAnnotationsResponse data, response status code and response headers
    def get_page_link_annotations_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_link_annotations ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_link_annotations"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_link_annotations"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/links".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LinkAnnotationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_link_annotations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read page text items.
    # 
    # @param name The document name.
    # @param page_number Number of page (starting from 1).
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format List of formats for search.
    # @option opts [String] :regex Formats are specified as a regular expression.
    # @option opts [BOOLEAN] :split_rects Split result fragments (default is true).
    # @option opts [String] :folder The document folder.
    # @return [TextRectsResponse]
    def get_page_text(name, page_number, x, y, width, height, opts = {})
      data, _status_code, _headers = get_page_text_with_http_info(name, page_number, x, y, width, height, opts)
      return data
    end

    # Read page text items.
    # 
    # @param name The document name.
    # @param page_number Number of page (starting from 1).
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format List of formats for search.
    # @option opts [String] :regex Formats are specified as a regular expression.
    # @option opts [BOOLEAN] :split_rects Split result fragments (default is true).
    # @option opts [String] :folder The document folder.
    # @return [Array<(TextRectsResponse, Fixnum, Hash)>] TextRectsResponse data, response status code and response headers
    def get_page_text_with_http_info(name, page_number, x, y, width, height, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_text"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_text"
      end
      # verify the required parameter 'x' is set
      if @api_client.config.client_side_validation && x.nil?
        fail ArgumentError, "Missing the required parameter 'x' when calling PdfApi.get_page_text"
      end
      # verify the required parameter 'y' is set
      if @api_client.config.client_side_validation && y.nil?
        fail ArgumentError, "Missing the required parameter 'y' when calling PdfApi.get_page_text"
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling PdfApi.get_page_text"
      end
      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling PdfApi.get_page_text"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/text".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'X'] = x
      query_params[:'Y'] = y
      query_params[:'Width'] = width
      query_params[:'Height'] = height
      query_params[:'format'] = @api_client.build_collection_param(opts[:'format'], :multi) if !opts[:'format'].nil?
      query_params[:'regex'] = opts[:'regex'] if !opts[:'regex'].nil?
      query_params[:'splitRects'] = opts[:'split_rects'] if !opts[:'split_rects'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextRectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read page text items.
    # 
    # @param name 
    # @param page_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_page_text_items(name, page_number, opts = {})
      data, _status_code, _headers = get_page_text_items_with_http_info(name, page_number, opts)
      return data
    end

    # Read page text items.
    # 
    # @param name 
    # @param page_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def get_page_text_items_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_page_text_items ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_page_text_items"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_page_text_items"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/textItems".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if !opts[:'with_empty'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_page_text_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document pages info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentPagesResponse]
    def get_pages(name, opts = {})
      data, _status_code, _headers = get_pages_with_http_info(name, opts)
      return data
    end

    # Read document pages info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(DocumentPagesResponse, Fixnum, Hash)>] DocumentPagesResponse data, response status code and response headers
    def get_pages_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pages ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pages"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPagesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert PCL file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.pcl)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_pcl_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_pcl_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert PCL file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.pcl)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pcl_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pcl_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_pcl_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/pcl"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pcl_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to DOC format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :add_return_to_line_end Add return to line end.
    # @option opts [String] :format Allows to specify .doc or .docx file format.
    # @option opts [Integer] :image_resolution_x Image resolution X.
    # @option opts [Integer] :image_resolution_y Image resolution Y.
    # @option opts [Integer] :max_distance_between_text_lines Max distance between text lines.
    # @option opts [String] :mode Allows to control how a PDF document is converted into a word processing document.
    # @option opts [BOOLEAN] :recognize_bullets Recognize bullets.
    # @option opts [Float] :relative_horizontal_proximity Relative horizontal proximity.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_doc(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_doc_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to DOC format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :add_return_to_line_end Add return to line end.
    # @option opts [String] :format Allows to specify .doc or .docx file format.
    # @option opts [Integer] :image_resolution_x Image resolution X.
    # @option opts [Integer] :image_resolution_y Image resolution Y.
    # @option opts [Integer] :max_distance_between_text_lines Max distance between text lines.
    # @option opts [String] :mode Allows to control how a PDF document is converted into a word processing document.
    # @option opts [BOOLEAN] :recognize_bullets Recognize bullets.
    # @option opts [Float] :relative_horizontal_proximity Relative horizontal proximity.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_doc_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_doc ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_doc"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/doc".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'addReturnToLineEnd'] = opts[:'add_return_to_line_end'] if !opts[:'add_return_to_line_end'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'imageResolutionX'] = opts[:'image_resolution_x'] if !opts[:'image_resolution_x'].nil?
      query_params[:'imageResolutionY'] = opts[:'image_resolution_y'] if !opts[:'image_resolution_y'].nil?
      query_params[:'maxDistanceBetweenTextLines'] = opts[:'max_distance_between_text_lines'] if !opts[:'max_distance_between_text_lines'].nil?
      query_params[:'mode'] = opts[:'mode'] if !opts[:'mode'].nil?
      query_params[:'recognizeBullets'] = opts[:'recognize_bullets'] if !opts[:'recognize_bullets'].nil?
      query_params[:'relativeHorizontalProximity'] = opts[:'relative_horizontal_proximity'] if !opts[:'relative_horizontal_proximity'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_recognition_mode Рroperty tunes conversion for this or that desirable method of recognition of content.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_epub(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_epub_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_recognition_mode Рroperty tunes conversion for this or that desirable method of recognition of content.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_epub_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_epub ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_epub"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/epub".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'contentRecognitionMode'] = opts[:'content_recognition_mode'] if !opts[:'content_recognition_mode'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_epub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to Html format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :additional_margin_width_in_points Defines width of margin that will be forcibly left around that output HTML-areas.
    # @option opts [BOOLEAN] :compress_svg_graphics_if_any The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
    # @option opts [BOOLEAN] :convert_marked_content_to_layers If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
    # @option opts [String] :default_font_name Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
    # @option opts [String] :document_type Result document type.
    # @option opts [BOOLEAN] :fixed_layout The value indicating whether that HTML is created as fixed layout.
    # @option opts [Integer] :image_resolution Resolution for image rendering.
    # @option opts [Integer] :minimal_line_width This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
    # @option opts [BOOLEAN] :prevent_glyphs_grouping This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
    # @option opts [BOOLEAN] :split_css_into_pages When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page.
    # @option opts [BOOLEAN] :split_into_pages The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
    # @option opts [BOOLEAN] :use_z_order If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
    # @option opts [String] :antialiasing_processing The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
    # @option opts [String] :css_class_names_prefix When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
    # @option opts [Array<Integer>] :explicit_list_of_saved_pages With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
    # @option opts [String] :font_encoding_strategy Defines encoding special rule to tune PDF decoding for current document.
    # @option opts [String] :font_saving_mode Defines font saving mode that will be used during saving of PDF to desirable format.
    # @option opts [String] :html_markup_generation_mode Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
    # @option opts [String] :letters_positioning_method The mode of positioning of letters in words in result HTML.
    # @option opts [BOOLEAN] :pages_flow_type_depends_on_viewers_screen_size If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
    # @option opts [String] :parts_embedding_mode It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
    # @option opts [String] :raster_images_saving_mode Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
    # @option opts [BOOLEAN] :remove_empty_areas_on_top_and_bottom Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
    # @option opts [BOOLEAN] :save_shadowed_texts_as_transparent_texts Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
    # @option opts [BOOLEAN] :save_transparent_texts Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
    # @option opts [String] :special_folder_for_all_images The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [String] :special_folder_for_svg_images The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [BOOLEAN] :try_save_text_underlining_and_strikeouting_in_css PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_html(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_html_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to Html format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :additional_margin_width_in_points Defines width of margin that will be forcibly left around that output HTML-areas.
    # @option opts [BOOLEAN] :compress_svg_graphics_if_any The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
    # @option opts [BOOLEAN] :convert_marked_content_to_layers If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
    # @option opts [String] :default_font_name Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
    # @option opts [String] :document_type Result document type.
    # @option opts [BOOLEAN] :fixed_layout The value indicating whether that HTML is created as fixed layout.
    # @option opts [Integer] :image_resolution Resolution for image rendering.
    # @option opts [Integer] :minimal_line_width This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
    # @option opts [BOOLEAN] :prevent_glyphs_grouping This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
    # @option opts [BOOLEAN] :split_css_into_pages When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page.
    # @option opts [BOOLEAN] :split_into_pages The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
    # @option opts [BOOLEAN] :use_z_order If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
    # @option opts [String] :antialiasing_processing The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
    # @option opts [String] :css_class_names_prefix When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
    # @option opts [Array<Integer>] :explicit_list_of_saved_pages With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
    # @option opts [String] :font_encoding_strategy Defines encoding special rule to tune PDF decoding for current document.
    # @option opts [String] :font_saving_mode Defines font saving mode that will be used during saving of PDF to desirable format.
    # @option opts [String] :html_markup_generation_mode Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
    # @option opts [String] :letters_positioning_method The mode of positioning of letters in words in result HTML.
    # @option opts [BOOLEAN] :pages_flow_type_depends_on_viewers_screen_size If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
    # @option opts [String] :parts_embedding_mode It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
    # @option opts [String] :raster_images_saving_mode Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
    # @option opts [BOOLEAN] :remove_empty_areas_on_top_and_bottom Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
    # @option opts [BOOLEAN] :save_shadowed_texts_as_transparent_texts Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
    # @option opts [BOOLEAN] :save_transparent_texts Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
    # @option opts [String] :special_folder_for_all_images The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [String] :special_folder_for_svg_images The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [BOOLEAN] :try_save_text_underlining_and_strikeouting_in_css PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_html_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_html ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_html"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/html".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'additionalMarginWidthInPoints'] = opts[:'additional_margin_width_in_points'] if !opts[:'additional_margin_width_in_points'].nil?
      query_params[:'compressSvgGraphicsIfAny'] = opts[:'compress_svg_graphics_if_any'] if !opts[:'compress_svg_graphics_if_any'].nil?
      query_params[:'convertMarkedContentToLayers'] = opts[:'convert_marked_content_to_layers'] if !opts[:'convert_marked_content_to_layers'].nil?
      query_params[:'defaultFontName'] = opts[:'default_font_name'] if !opts[:'default_font_name'].nil?
      query_params[:'documentType'] = opts[:'document_type'] if !opts[:'document_type'].nil?
      query_params[:'fixedLayout'] = opts[:'fixed_layout'] if !opts[:'fixed_layout'].nil?
      query_params[:'imageResolution'] = opts[:'image_resolution'] if !opts[:'image_resolution'].nil?
      query_params[:'minimalLineWidth'] = opts[:'minimal_line_width'] if !opts[:'minimal_line_width'].nil?
      query_params[:'preventGlyphsGrouping'] = opts[:'prevent_glyphs_grouping'] if !opts[:'prevent_glyphs_grouping'].nil?
      query_params[:'splitCssIntoPages'] = opts[:'split_css_into_pages'] if !opts[:'split_css_into_pages'].nil?
      query_params[:'splitIntoPages'] = opts[:'split_into_pages'] if !opts[:'split_into_pages'].nil?
      query_params[:'useZOrder'] = opts[:'use_z_order'] if !opts[:'use_z_order'].nil?
      query_params[:'antialiasingProcessing'] = opts[:'antialiasing_processing'] if !opts[:'antialiasing_processing'].nil?
      query_params[:'cssClassNamesPrefix'] = opts[:'css_class_names_prefix'] if !opts[:'css_class_names_prefix'].nil?
      query_params[:'explicitListOfSavedPages'] = @api_client.build_collection_param(opts[:'explicit_list_of_saved_pages'], :multi) if !opts[:'explicit_list_of_saved_pages'].nil?
      query_params[:'fontEncodingStrategy'] = opts[:'font_encoding_strategy'] if !opts[:'font_encoding_strategy'].nil?
      query_params[:'fontSavingMode'] = opts[:'font_saving_mode'] if !opts[:'font_saving_mode'].nil?
      query_params[:'htmlMarkupGenerationMode'] = opts[:'html_markup_generation_mode'] if !opts[:'html_markup_generation_mode'].nil?
      query_params[:'lettersPositioningMethod'] = opts[:'letters_positioning_method'] if !opts[:'letters_positioning_method'].nil?
      query_params[:'pagesFlowTypeDependsOnViewersScreenSize'] = opts[:'pages_flow_type_depends_on_viewers_screen_size'] if !opts[:'pages_flow_type_depends_on_viewers_screen_size'].nil?
      query_params[:'partsEmbeddingMode'] = opts[:'parts_embedding_mode'] if !opts[:'parts_embedding_mode'].nil?
      query_params[:'rasterImagesSavingMode'] = opts[:'raster_images_saving_mode'] if !opts[:'raster_images_saving_mode'].nil?
      query_params[:'removeEmptyAreasOnTopAndBottom'] = opts[:'remove_empty_areas_on_top_and_bottom'] if !opts[:'remove_empty_areas_on_top_and_bottom'].nil?
      query_params[:'saveShadowedTextsAsTransparentTexts'] = opts[:'save_shadowed_texts_as_transparent_texts'] if !opts[:'save_shadowed_texts_as_transparent_texts'].nil?
      query_params[:'saveTransparentTexts'] = opts[:'save_transparent_texts'] if !opts[:'save_transparent_texts'].nil?
      query_params[:'specialFolderForAllImages'] = opts[:'special_folder_for_all_images'] if !opts[:'special_folder_for_all_images'].nil?
      query_params[:'specialFolderForSvgImages'] = opts[:'special_folder_for_svg_images'] if !opts[:'special_folder_for_svg_images'].nil?
      query_params[:'trySaveTextUnderliningAndStrikeoutingInCss'] = opts[:'try_save_text_underlining_and_strikeouting_in_css'] if !opts[:'try_save_text_underlining_and_strikeouting_in_css'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :pages_count Pages count.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_la_te_x(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_la_te_x_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :pages_count Pages count.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_la_te_x_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_la_te_x ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_la_te_x"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/latex".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'pagesCount'] = opts[:'pages_count'] if !opts[:'pages_count'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_la_te_x\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_mobi_xml(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_mobi_xml_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_mobi_xml_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_mobi_xml ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_mobi_xml"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/mobixml".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_mobi_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param type Type of PdfA format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_pdf_a(name, type, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_pdf_a_with_http_info(name, type, opts)
      return data
    end

    # Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param type Type of PdfA format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_pdf_a_with_http_info(name, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_pdf_a ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_pdf_a"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling PdfApi.get_pdf_in_storage_to_pdf_a"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/pdfa".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'type'] = type
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_pdf_a\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :separate_images Separate images.
    # @option opts [BOOLEAN] :slides_as_images Slides as images.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_pptx(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_pptx_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :separate_images Separate images.
    # @option opts [BOOLEAN] :slides_as_images Slides as images.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_pptx_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_pptx ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_pptx"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/pptx".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'separateImages'] = opts[:'separate_images'] if !opts[:'separate_images'].nil?
      query_params[:'slidesAsImages'] = opts[:'slides_as_images'] if !opts[:'slides_as_images'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_pptx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to SVG format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :compress_output_to_zip_archive Specifies whether output will be created as one zip-archive.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_svg(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_svg_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to SVG format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :compress_output_to_zip_archive Specifies whether output will be created as one zip-archive.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_svg_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_svg ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_svg"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/svg".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'compressOutputToZipArchive'] = opts[:'compress_output_to_zip_archive'] if !opts[:'compress_output_to_zip_archive'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_svg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :brightness Image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_tiff(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_tiff_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :brightness Image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_tiff_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_tiff"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/tiff".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'brightness'] = opts[:'brightness'] if !opts[:'brightness'].nil?
      query_params[:'compression'] = opts[:'compression'] if !opts[:'compression'].nil?
      query_params[:'colorDepth'] = opts[:'color_depth'] if !opts[:'color_depth'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'orientation'] = opts[:'orientation'] if !opts[:'orientation'].nil?
      query_params[:'skipBlankPages'] = opts[:'skip_blank_pages'] if !opts[:'skip_blank_pages'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'xResolution'] = opts[:'x_resolution'] if !opts[:'x_resolution'].nil?
      query_params[:'yResolution'] = opts[:'y_resolution'] if !opts[:'y_resolution'].nil?
      query_params[:'pageIndex'] = opts[:'page_index'] if !opts[:'page_index'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to XLS format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :insert_blank_column_at_first Insert blank column at first
    # @option opts [BOOLEAN] :minimize_the_number_of_worksheets Minimize the number of worksheets
    # @option opts [Float] :scale_factor Scale factor
    # @option opts [BOOLEAN] :uniform_worksheets Uniform worksheets
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_xls(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_xls_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to XLS format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :insert_blank_column_at_first Insert blank column at first
    # @option opts [BOOLEAN] :minimize_the_number_of_worksheets Minimize the number of worksheets
    # @option opts [Float] :scale_factor Scale factor
    # @option opts [BOOLEAN] :uniform_worksheets Uniform worksheets
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_xls_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_xls ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_xls"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xls".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'insertBlankColumnAtFirst'] = opts[:'insert_blank_column_at_first'] if !opts[:'insert_blank_column_at_first'].nil?
      query_params[:'minimizeTheNumberOfWorksheets'] = opts[:'minimize_the_number_of_worksheets'] if !opts[:'minimize_the_number_of_worksheets'].nil?
      query_params[:'scaleFactor'] = opts[:'scale_factor'] if !opts[:'scale_factor'].nil?
      query_params[:'uniformWorksheets'] = opts[:'uniform_worksheets'] if !opts[:'uniform_worksheets'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_xls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to XML format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_xml(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_xml_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to XML format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_xml_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_xml ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_xml"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xml".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to XPS format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_pdf_in_storage_to_xps(name, opts = {})
      data, _status_code, _headers = get_pdf_in_storage_to_xps_with_http_info(name, opts)
      return data
    end

    # Converts PDF document (located on storage) to XPS format and returns resulting file in response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_pdf_in_storage_to_xps_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_pdf_in_storage_to_xps ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_pdf_in_storage_to_xps"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xps".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_pdf_in_storage_to_xps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert PS file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.ps)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_ps_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_ps_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert PS file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.ps)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_ps_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_ps_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_ps_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/ps"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_ps_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read segment.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param segment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemResponse]
    def get_segment(name, page_number, fragment_number, segment_number, opts = {})
      data, _status_code, _headers = get_segment_with_http_info(name, page_number, fragment_number, segment_number, opts)
      return data
    end

    # Read segment.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param segment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextItemResponse, Fixnum, Hash)>] TextItemResponse data, response status code and response headers
    def get_segment_with_http_info(name, page_number, fragment_number, segment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_segment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_segment"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_segment"
      end
      # verify the required parameter 'fragment_number' is set
      if @api_client.config.client_side_validation && fragment_number.nil?
        fail ArgumentError, "Missing the required parameter 'fragment_number' when calling PdfApi.get_segment"
      end
      # verify the required parameter 'segment_number' is set
      if @api_client.config.client_side_validation && segment_number.nil?
        fail ArgumentError, "Missing the required parameter 'segment_number' when calling PdfApi.get_segment"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s).sub('{' + 'segmentNumber' + '}', segment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read segment text format.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param segment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextFormatResponse]
    def get_segment_text_format(name, page_number, fragment_number, segment_number, opts = {})
      data, _status_code, _headers = get_segment_text_format_with_http_info(name, page_number, fragment_number, segment_number, opts)
      return data
    end

    # Read segment text format.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param segment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextFormatResponse, Fixnum, Hash)>] TextFormatResponse data, response status code and response headers
    def get_segment_text_format_with_http_info(name, page_number, fragment_number, segment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_segment_text_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_segment_text_format"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_segment_text_format"
      end
      # verify the required parameter 'fragment_number' is set
      if @api_client.config.client_side_validation && fragment_number.nil?
        fail ArgumentError, "Missing the required parameter 'fragment_number' when calling PdfApi.get_segment_text_format"
      end
      # verify the required parameter 'segment_number' is set
      if @api_client.config.client_side_validation && segment_number.nil?
        fail ArgumentError, "Missing the required parameter 'segment_number' when calling PdfApi.get_segment_text_format"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments/{segmentNumber}/textformat".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s).sub('{' + 'segmentNumber' + '}', segment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_segment_text_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read fragment segments.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_segments(name, page_number, fragment_number, opts = {})
      data, _status_code, _headers = get_segments_with_http_info(name, page_number, fragment_number, opts)
      return data
    end

    # Read fragment segments.
    # 
    # @param name 
    # @param page_number 
    # @param fragment_number 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def get_segments_with_http_info(name, page_number, fragment_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_segments ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_segments"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.get_segments"
      end
      # verify the required parameter 'fragment_number' is set
      if @api_client.config.client_side_validation && fragment_number.nil?
        fail ArgumentError, "Missing the required parameter 'fragment_number' when calling PdfApi.get_segments"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/fragments/{fragmentNumber}/segments".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'fragmentNumber' + '}', fragment_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if !opts[:'with_empty'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_segments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert SVG file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :adjust_page_size Adjust page size
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @return [File]
    def get_svg_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_svg_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert SVG file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :adjust_page_size Adjust page size
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_svg_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_svg_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_svg_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/svg"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'adjustPageSize'] = opts[:'adjust_page_size'] if !opts[:'adjust_page_size'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'isLandscape'] = opts[:'is_landscape'] if !opts[:'is_landscape'].nil?
      query_params[:'marginLeft'] = opts[:'margin_left'] if !opts[:'margin_left'].nil?
      query_params[:'marginBottom'] = opts[:'margin_bottom'] if !opts[:'margin_bottom'].nil?
      query_params[:'marginRight'] = opts[:'margin_right'] if !opts[:'margin_right'].nil?
      query_params[:'marginTop'] = opts[:'margin_top'] if !opts[:'margin_top'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_svg_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document text.
    # 
    # @param name The document name.
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format List of formats for search.
    # @option opts [String] :regex Formats are specified as a regular expression.
    # @option opts [BOOLEAN] :split_rects Split result fragments (default is true).
    # @option opts [String] :folder The document folder.
    # @return [TextRectsResponse]
    def get_text(name, x, y, width, height, opts = {})
      data, _status_code, _headers = get_text_with_http_info(name, x, y, width, height, opts)
      return data
    end

    # Read document text.
    # 
    # @param name The document name.
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format List of formats for search.
    # @option opts [String] :regex Formats are specified as a regular expression.
    # @option opts [BOOLEAN] :split_rects Split result fragments (default is true).
    # @option opts [String] :folder The document folder.
    # @return [Array<(TextRectsResponse, Fixnum, Hash)>] TextRectsResponse data, response status code and response headers
    def get_text_with_http_info(name, x, y, width, height, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_text"
      end
      # verify the required parameter 'x' is set
      if @api_client.config.client_side_validation && x.nil?
        fail ArgumentError, "Missing the required parameter 'x' when calling PdfApi.get_text"
      end
      # verify the required parameter 'y' is set
      if @api_client.config.client_side_validation && y.nil?
        fail ArgumentError, "Missing the required parameter 'y' when calling PdfApi.get_text"
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling PdfApi.get_text"
      end
      # verify the required parameter 'height' is set
      if @api_client.config.client_side_validation && height.nil?
        fail ArgumentError, "Missing the required parameter 'height' when calling PdfApi.get_text"
      end
      # resource path
      local_var_path = "/pdf/{name}/text".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'X'] = x
      query_params[:'Y'] = y
      query_params[:'Width'] = width
      query_params[:'Height'] = height
      query_params[:'format'] = @api_client.build_collection_param(opts[:'format'], :multi) if !opts[:'format'].nil?
      query_params[:'regex'] = opts[:'regex'] if !opts[:'regex'].nil?
      query_params[:'splitRects'] = opts[:'split_rects'] if !opts[:'split_rects'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextRectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document text items.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextItemsResponse]
    def get_text_items(name, opts = {})
      data, _status_code, _headers = get_text_items_with_http_info(name, opts)
      return data
    end

    # Read document text items.
    # 
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :with_empty 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def get_text_items_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_text_items ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_text_items"
      end
      # resource path
      local_var_path = "/pdf/{name}/textItems".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = opts[:'with_empty'] if !opts[:'with_empty'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_text_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify signature document.
    # 
    # @param name The document name.
    # @param sign_name Sign name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [SignatureVerifyResponse]
    def get_verify_signature(name, sign_name, opts = {})
      data, _status_code, _headers = get_verify_signature_with_http_info(name, sign_name, opts)
      return data
    end

    # Verify signature document.
    # 
    # @param name The document name.
    # @param sign_name Sign name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(SignatureVerifyResponse, Fixnum, Hash)>] SignatureVerifyResponse data, response status code and response headers
    def get_verify_signature_with_http_info(name, sign_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_verify_signature ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_verify_signature"
      end
      # verify the required parameter 'sign_name' is set
      if @api_client.config.client_side_validation && sign_name.nil?
        fail ArgumentError, "Missing the required parameter 'sign_name' when calling PdfApi.get_verify_signature"
      end
      # resource path
      local_var_path = "/pdf/{name}/verifySignature".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'signName'] = sign_name
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureVerifyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_verify_signature\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert web page to PDF format and return resulting file in response. 
    # 
    # @param url Source url
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @return [File]
    def get_web_in_storage_to_pdf(url, opts = {})
      data, _status_code, _headers = get_web_in_storage_to_pdf_with_http_info(url, opts)
      return data
    end

    # Convert web page to PDF format and return resulting file in response. 
    # 
    # @param url Source url
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_web_in_storage_to_pdf_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_web_in_storage_to_pdf ..."
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling PdfApi.get_web_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/web"

      # query parameters
      query_params = {}
      query_params[:'url'] = url
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'isLandscape'] = opts[:'is_landscape'] if !opts[:'is_landscape'].nil?
      query_params[:'marginLeft'] = opts[:'margin_left'] if !opts[:'margin_left'].nil?
      query_params[:'marginBottom'] = opts[:'margin_bottom'] if !opts[:'margin_bottom'].nil?
      query_params[:'marginRight'] = opts[:'margin_right'] if !opts[:'margin_right'].nil?
      query_params[:'marginTop'] = opts[:'margin_top'] if !opts[:'margin_top'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_web_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get number of words per document page.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [WordCountResponse]
    def get_words_per_page(name, opts = {})
      data, _status_code, _headers = get_words_per_page_with_http_info(name, opts)
      return data
    end

    # Get number of words per document page.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(WordCountResponse, Fixnum, Hash)>] WordCountResponse data, response status code and response headers
    def get_words_per_page_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_words_per_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_words_per_page"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/wordCount".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WordCountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_words_per_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_xfa_pdf_in_storage_to_acro_form(name, opts = {})
      data, _status_code, _headers = get_xfa_pdf_in_storage_to_acro_form_with_http_info(name, opts)
      return data
    end

    # Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_xfa_pdf_in_storage_to_acro_form_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_xfa_pdf_in_storage_to_acro_form ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.get_xfa_pdf_in_storage_to_acro_form"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xfatoacroform".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_xfa_pdf_in_storage_to_acro_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert XML file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xsl_file_path Full XSL source filename (ex. /folder1/folder2/template.xsl)
    # @return [File]
    def get_xml_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_xml_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert XML file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xsl_file_path Full XSL source filename (ex. /folder1/folder2/template.xsl)
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_xml_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_xml_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_xml_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/xml"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'xslFilePath'] = opts[:'xsl_file_path'] if !opts[:'xsl_file_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_xml_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert XPS file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.xps)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_xps_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_xps_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert XPS file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.xps)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_xps_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_xps_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_xps_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/xps"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_xps_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.xslfo)
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_xsl_fo_in_storage_to_pdf(src_path, opts = {})
      data, _status_code, _headers = get_xsl_fo_in_storage_to_pdf_with_http_info(src_path, opts)
      return data
    end

    # Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
    # 
    # @param src_path Full source filename (ex. /folder1/folder2/template.xslfo)
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_xsl_fo_in_storage_to_pdf_with_http_info(src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.get_xsl_fo_in_storage_to_pdf ..."
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.get_xsl_fo_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/create/xslfo"

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#get_xsl_fo_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Append document to existing one.
    # 
    # @param name The original document name.
    # @param [Hash] opts the optional parameters
    # @option opts [AppendDocument] :append_document with the append document data.
    # @option opts [String] :append_file Append file server path.
    # @option opts [Integer] :start_page Appending start page. (default to 0)
    # @option opts [Integer] :end_page Appending end page. (default to 0)
    # @option opts [String] :storage The documents storage.
    # @option opts [String] :folder The original document folder.
    # @return [DocumentResponse]
    def post_append_document(name, opts = {})
      data, _status_code, _headers = post_append_document_with_http_info(name, opts)
      return data
    end

    # Append document to existing one.
    # 
    # @param name The original document name.
    # @param [Hash] opts the optional parameters
    # @option opts [AppendDocument] :append_document with the append document data.
    # @option opts [String] :append_file Append file server path.
    # @option opts [Integer] :start_page Appending start page.
    # @option opts [Integer] :end_page Appending end page.
    # @option opts [String] :storage The documents storage.
    # @option opts [String] :folder The original document folder.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_append_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_append_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_append_document"
      end
      # resource path
      local_var_path = "/pdf/{name}/appendDocument".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'appendFile'] = opts[:'append_file'] if !opts[:'append_file'].nil?
      query_params[:'startPage'] = opts[:'start_page'] if !opts[:'start_page'].nil?
      query_params[:'endPage'] = opts[:'end_page'] if !opts[:'end_page'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'append_document'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_append_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create field.
    # 
    # @param name The document name.
    # @param page Document page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Field] :field with the field data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def post_create_field(name, page, opts = {})
      data, _status_code, _headers = post_create_field_with_http_info(name, page, opts)
      return data
    end

    # Create field.
    # 
    # @param name The document name.
    # @param page Document page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Field] :field with the field data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def post_create_field_with_http_info(name, page, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_create_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_create_field"
      end
      # verify the required parameter 'page' is set
      if @api_client.config.client_side_validation && page.nil?
        fail ArgumentError, "Missing the required parameter 'page' when calling PdfApi.post_create_field"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = page
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'field'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_create_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Document's replace text method. Deprecated
    # 
    # @param name 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentTextReplaceResponse]
    def post_document_replace_text(name, text_replace, opts = {})
      data, _status_code, _headers = post_document_replace_text_with_http_info(name, text_replace, opts)
      return data
    end

    # Document&#39;s replace text method. Deprecated
    # 
    # @param name 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(DocumentTextReplaceResponse, Fixnum, Hash)>] DocumentTextReplaceResponse data, response status code and response headers
    def post_document_replace_text_with_http_info(name, text_replace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_document_replace_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_document_replace_text"
      end
      # verify the required parameter 'text_replace' is set
      if @api_client.config.client_side_validation && text_replace.nil?
        fail ArgumentError, "Missing the required parameter 'text_replace' when calling PdfApi.post_document_replace_text"
      end
      # resource path
      local_var_path = "/pdf/{name}/replaceText".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentTextReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_document_replace_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Document's replace text method. Deprecated
    # 
    # @param name 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentTextReplaceResponse]
    def post_document_replace_text_list(name, text_replace_list_request, opts = {})
      data, _status_code, _headers = post_document_replace_text_list_with_http_info(name, text_replace_list_request, opts)
      return data
    end

    # Document&#39;s replace text method. Deprecated
    # 
    # @param name 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(DocumentTextReplaceResponse, Fixnum, Hash)>] DocumentTextReplaceResponse data, response status code and response headers
    def post_document_replace_text_list_with_http_info(name, text_replace_list_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_document_replace_text_list ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_document_replace_text_list"
      end
      # verify the required parameter 'text_replace_list_request' is set
      if @api_client.config.client_side_validation && text_replace_list_request.nil?
        fail ArgumentError, "Missing the required parameter 'text_replace_list_request' when calling PdfApi.post_document_replace_text_list"
      end
      # resource path
      local_var_path = "/pdf/{name}/replaceTextList".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace_list_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentTextReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_document_replace_text_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Document's replace text method.
    # 
    # @param name 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextReplaceResponse]
    def post_document_text_replace(name, text_replace, opts = {})
      data, _status_code, _headers = post_document_text_replace_with_http_info(name, text_replace, opts)
      return data
    end

    # Document&#39;s replace text method.
    # 
    # @param name 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextReplaceResponse, Fixnum, Hash)>] TextReplaceResponse data, response status code and response headers
    def post_document_text_replace_with_http_info(name, text_replace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_document_text_replace ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_document_text_replace"
      end
      # verify the required parameter 'text_replace' is set
      if @api_client.config.client_side_validation && text_replace.nil?
        fail ArgumentError, "Missing the required parameter 'text_replace' when calling PdfApi.post_document_text_replace"
      end
      # resource path
      local_var_path = "/pdf/{name}/text/replace".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_document_text_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Move page to new position.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param new_index The new page position/index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def post_move_page(name, page_number, new_index, opts = {})
      data, _status_code, _headers = post_move_page_with_http_info(name, page_number, new_index, opts)
      return data
    end

    # Move page to new position.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param new_index The new page position/index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def post_move_page_with_http_info(name, page_number, new_index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_move_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_move_page"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.post_move_page"
      end
      # verify the required parameter 'new_index' is set
      if @api_client.config.client_side_validation && new_index.nil?
        fail ArgumentError, "Missing the required parameter 'new_index' when calling PdfApi.post_move_page"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/movePage".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'newIndex'] = new_index
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_move_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Optimize document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [OptimizeOptions] :options The optimization options.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def post_optimize_document(name, opts = {})
      data, _status_code, _headers = post_optimize_document_with_http_info(name, opts)
      return data
    end

    # Optimize document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [OptimizeOptions] :options The optimization options.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def post_optimize_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_optimize_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_optimize_document"
      end
      # resource path
      local_var_path = "/pdf/{name}/optimize".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'options'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_optimize_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Page's replace text method. Deprecated
    # 
    # @param name 
    # @param page_number 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [PageTextReplaceResponse]
    def post_page_replace_text(name, page_number, text_replace, opts = {})
      data, _status_code, _headers = post_page_replace_text_with_http_info(name, page_number, text_replace, opts)
      return data
    end

    # Page&#39;s replace text method. Deprecated
    # 
    # @param name 
    # @param page_number 
    # @param text_replace 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(PageTextReplaceResponse, Fixnum, Hash)>] PageTextReplaceResponse data, response status code and response headers
    def post_page_replace_text_with_http_info(name, page_number, text_replace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_page_replace_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_page_replace_text"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.post_page_replace_text"
      end
      # verify the required parameter 'text_replace' is set
      if @api_client.config.client_side_validation && text_replace.nil?
        fail ArgumentError, "Missing the required parameter 'text_replace' when calling PdfApi.post_page_replace_text"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/replaceText".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageTextReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_page_replace_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Page's replace text method. Deprecated
    # 
    # @param name 
    # @param page_number 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [PageTextReplaceResponse]
    def post_page_replace_text_list(name, page_number, text_replace_list_request, opts = {})
      data, _status_code, _headers = post_page_replace_text_list_with_http_info(name, page_number, text_replace_list_request, opts)
      return data
    end

    # Page&#39;s replace text method. Deprecated
    # 
    # @param name 
    # @param page_number 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(PageTextReplaceResponse, Fixnum, Hash)>] PageTextReplaceResponse data, response status code and response headers
    def post_page_replace_text_list_with_http_info(name, page_number, text_replace_list_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_page_replace_text_list ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_page_replace_text_list"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.post_page_replace_text_list"
      end
      # verify the required parameter 'text_replace_list_request' is set
      if @api_client.config.client_side_validation && text_replace_list_request.nil?
        fail ArgumentError, "Missing the required parameter 'text_replace_list_request' when calling PdfApi.post_page_replace_text_list"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/replaceTextList".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace_list_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageTextReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_page_replace_text_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Page's replace text method.
    # 
    # @param name 
    # @param page_number 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextReplaceResponse]
    def post_page_text_replace(name, page_number, text_replace_list_request, opts = {})
      data, _status_code, _headers = post_page_text_replace_with_http_info(name, page_number, text_replace_list_request, opts)
      return data
    end

    # Page&#39;s replace text method.
    # 
    # @param name 
    # @param page_number 
    # @param text_replace_list_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(TextReplaceResponse, Fixnum, Hash)>] TextReplaceResponse data, response status code and response headers
    def post_page_text_replace_with_http_info(name, page_number, text_replace_list_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_page_text_replace ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_page_text_replace"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.post_page_text_replace"
      end
      # verify the required parameter 'text_replace_list_request' is set
      if @api_client.config.client_side_validation && text_replace_list_request.nil?
        fail ArgumentError, "Missing the required parameter 'text_replace_list_request' when calling PdfApi.post_page_text_replace"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/text/replace".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(text_replace_list_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextReplaceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_page_text_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace document image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :image_file Path to image file if specified. Request content is used otherwise.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [File] :image Image file.
    # @return [ImageResponse]
    def post_replace_image(name, page_number, image_number, opts = {})
      data, _status_code, _headers = post_replace_image_with_http_info(name, page_number, image_number, opts)
      return data
    end

    # Replace document image.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :image_file Path to image file if specified. Request content is used otherwise.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [File] :image Image file.
    # @return [Array<(ImageResponse, Fixnum, Hash)>] ImageResponse data, response status code and response headers
    def post_replace_image_with_http_info(name, page_number, image_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_replace_image ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_replace_image"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.post_replace_image"
      end
      # verify the required parameter 'image_number' is set
      if @api_client.config.client_side_validation && image_number.nil?
        fail ArgumentError, "Missing the required parameter 'image_number' when calling PdfApi.post_replace_image"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images/{imageNumber}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s).sub('{' + 'imageNumber' + '}', image_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'imageFile'] = opts[:'image_file'] if !opts[:'image_file'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'image'] if !opts[:'image'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_replace_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sign document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Signature] :signature Signature object containing signature data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def post_sign_document(name, opts = {})
      data, _status_code, _headers = post_sign_document_with_http_info(name, opts)
      return data
    end

    # Sign document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Signature] :signature Signature object containing signature data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def post_sign_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_sign_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_sign_document"
      end
      # resource path
      local_var_path = "/pdf/{name}/sign".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'signature'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_sign_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sign page.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Signature] :signature Signature object containing signature data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def post_sign_page(name, page_number, opts = {})
      data, _status_code, _headers = post_sign_page_with_http_info(name, page_number, opts)
      return data
    end

    # Sign page.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Signature] :signature Signature object containing signature data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def post_sign_page_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_sign_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_sign_page"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.post_sign_page"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/sign".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'signature'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_sign_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Split document to parts.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Resulting documents format.
    # @option opts [Integer] :from Start page if defined.
    # @option opts [Integer] :to End page if defined.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SplitResultResponse]
    def post_split_document(name, opts = {})
      data, _status_code, _headers = post_split_document_with_http_info(name, opts)
      return data
    end

    # Split document to parts.
    # 
    # @param name Document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format Resulting documents format.
    # @option opts [Integer] :from Start page if defined.
    # @option opts [Integer] :to End page if defined.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SplitResultResponse, Fixnum, Hash)>] SplitResultResponse data, response status code and response headers
    def post_split_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.post_split_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.post_split_document"
      end
      # resource path
      local_var_path = "/pdf/{name}/split".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'to'] = opts[:'to'] if !opts[:'to'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SplitResultResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#post_split_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add new page to end of the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [DocumentPagesResponse]
    def put_add_new_page(name, opts = {})
      data, _status_code, _headers = put_add_new_page_with_http_info(name, opts)
      return data
    end

    # Add new page to end of the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(DocumentPagesResponse, Fixnum, Hash)>] DocumentPagesResponse data, response status code and response headers
    def put_add_new_page_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_add_new_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_add_new_page"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPagesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_add_new_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add text to PDF document page. Deprecated
    # 
    # @param name Name of the document to which text should be added.
    # @param page_number Number of page (starting with 1) to which text should be added.
    # @param [Hash] opts the optional parameters
    # @option opts [Paragraph] :paragraph Paragraph data.
    # @option opts [String] :storage File storage to be used.
    # @option opts [String] :folder Document folder.
    # @return [SaaSposeResponse]
    def put_add_paragraph(name, page_number, opts = {})
      data, _status_code, _headers = put_add_paragraph_with_http_info(name, page_number, opts)
      return data
    end

    # Add text to PDF document page. Deprecated
    # 
    # @param name Name of the document to which text should be added.
    # @param page_number Number of page (starting with 1) to which text should be added.
    # @param [Hash] opts the optional parameters
    # @option opts [Paragraph] :paragraph Paragraph data.
    # @option opts [String] :storage File storage to be used.
    # @option opts [String] :folder Document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_add_paragraph_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_add_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_add_paragraph"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_add_paragraph"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/paragraph".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'paragraph'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_add_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add text to PDF document page.
    # 
    # @param name The document name.
    # @param page_number Number of page (starting from 1).
    # @param [Hash] opts the optional parameters
    # @option opts [Paragraph] :paragraph Paragraph data.
    # @option opts [String] :folder Document folder.
    # @return [SaaSposeResponse]
    def put_add_text(name, page_number, opts = {})
      data, _status_code, _headers = put_add_text_with_http_info(name, page_number, opts)
      return data
    end

    # Add text to PDF document page.
    # 
    # @param name The document name.
    # @param page_number Number of page (starting from 1).
    # @param [Hash] opts the optional parameters
    # @option opts [Paragraph] :paragraph Paragraph data.
    # @option opts [String] :folder Document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_add_text_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_add_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_add_text"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_add_text"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/text".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'paragraph'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_add_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document from request content to format specified.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :url 
    # @option opts [String] :out_path Path to save result
    # @option opts [File] :file A file to be converted.
    # @return [File]
    def put_convert_document(opts = {})
      data, _status_code, _headers = put_convert_document_with_http_info(opts)
      return data
    end

    # Convert document from request content to format specified.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format The format to convert.
    # @option opts [String] :url 
    # @option opts [String] :out_path Path to save result
    # @option opts [File] :file A file to be converted.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_document_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_convert_document ..."
      end
      # resource path
      local_var_path = "/pdf/convert"

      # query parameters
      query_params = {}
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?
      query_params[:'outPath'] = opts[:'out_path'] if !opts[:'out_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_convert_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a specific file 
    # 
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id Source file&#39;s version
    # @option opts [String] :storage User&#39;s storage name
    # @return [SaaSposeResponse]
    def put_create(path, file, opts = {})
      data, _status_code, _headers = put_create_with_http_info(path, file, opts)
      return data
    end

    # Upload a specific file 
    # 
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version_id Source file&#39;s version
    # @option opts [String] :storage User&#39;s storage name
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_create_with_http_info(path, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_create ..."
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling PdfApi.put_create"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling PdfApi.put_create"
      end
      # resource path
      local_var_path = "/storage/file"

      # query parameters
      query_params = {}
      query_params[:'path'] = path
      query_params[:'versionId'] = opts[:'version_id'] if !opts[:'version_id'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      # Fix header in file
      post_body = file
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new document.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_file The template file server path if defined.
    # @option opts [String] :data_file The data file path (for xml template only).
    # @option opts [String] :template_type The template type, can be xml, html, bmp, jpg, png, tiff, emf, cgm, tex.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The new document folder.
    # @option opts [String] :url The url of web page if defined.
    # @option opts [BOOLEAN] :fit_size Draw a margin around content in resulting pdf. (default to false)
    # @return [DocumentResponse]
    def put_create_document(name, opts = {})
      data, _status_code, _headers = put_create_document_with_http_info(name, opts)
      return data
    end

    # Create new document.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_file The template file server path if defined.
    # @option opts [String] :data_file The data file path (for xml template only).
    # @option opts [String] :template_type The template type, can be xml, html, bmp, jpg, png, tiff, emf, cgm, tex.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The new document folder.
    # @option opts [String] :url The url of web page if defined.
    # @option opts [BOOLEAN] :fit_size Draw a margin around content in resulting pdf.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def put_create_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_create_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_create_document"
      end
      # resource path
      local_var_path = "/pdf/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'templateFile'] = opts[:'template_file'] if !opts[:'template_file'].nil?
      query_params[:'dataFile'] = opts[:'data_file'] if !opts[:'data_file'].nil?
      query_params[:'templateType'] = opts[:'template_type'] if !opts[:'template_type'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?
      query_params[:'fitSize'] = opts[:'fit_size'] if !opts[:'fit_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_create_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new document from images.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [ImagesListRequest] :images The images file paths set.  
    # @option opts [BOOLEAN] :ocr To create OCR layer for image or not. (default to false)
    # @option opts [String] :ocr_lang The language which is defined for OCR engine. Default is eng. (default to eng)
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The new document folder.
    # @return [DocumentResponse]
    def put_create_document_from_images(name, opts = {})
      data, _status_code, _headers = put_create_document_from_images_with_http_info(name, opts)
      return data
    end

    # Create new document from images.
    # 
    # @param name The new document name.
    # @param [Hash] opts the optional parameters
    # @option opts [ImagesListRequest] :images The images file paths set.  
    # @option opts [BOOLEAN] :ocr To create OCR layer for image or not.
    # @option opts [String] :ocr_lang The language which is defined for OCR engine. Default is eng.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The new document folder.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def put_create_document_from_images_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_create_document_from_images ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_create_document_from_images"
      end
      # resource path
      local_var_path = "/pdf/{name}/fromimages".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'ocr'] = opts[:'ocr'] if !opts[:'ocr'].nil?
      query_params[:'ocrLang'] = opts[:'ocr_lang'] if !opts[:'ocr_lang'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'images'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_create_document_from_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save document as Tiff image.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [TiffExportOptions] :export_options with tiff export options.
    # @option opts [String] :result_file The resulting file.
    # @option opts [Float] :brightness The image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_document_save_as_tiff(name, opts = {})
      data, _status_code, _headers = put_document_save_as_tiff_with_http_info(name, opts)
      return data
    end

    # Save document as Tiff image.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [TiffExportOptions] :export_options with tiff export options.
    # @option opts [String] :result_file The resulting file.
    # @option opts [Float] :brightness The image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_document_save_as_tiff_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_document_save_as_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_document_save_as_tiff"
      end
      # resource path
      local_var_path = "/pdf/{name}/SaveAs/tiff".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'resultFile'] = opts[:'result_file'] if !opts[:'result_file'].nil?
      query_params[:'brightness'] = opts[:'brightness'] if !opts[:'brightness'].nil?
      query_params[:'compression'] = opts[:'compression'] if !opts[:'compression'].nil?
      query_params[:'colorDepth'] = opts[:'color_depth'] if !opts[:'color_depth'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'orientation'] = opts[:'orientation'] if !opts[:'orientation'].nil?
      query_params[:'skipBlankPages'] = opts[:'skip_blank_pages'] if !opts[:'skip_blank_pages'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'xResolution'] = opts[:'x_resolution'] if !opts[:'x_resolution'].nil?
      query_params[:'yResolution'] = opts[:'y_resolution'] if !opts[:'y_resolution'].nil?
      query_params[:'pageIndex'] = opts[:'page_index'] if !opts[:'page_index'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'export_options'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_document_save_as_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.epub)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_epub_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_epub_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.epub)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_epub_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_epub_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_epub_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_epub_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/epub".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_epub_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Flatten form fields in document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_fields_flatten(name, opts = {})
      data, _status_code, _headers = put_fields_flatten_with_http_info(name, opts)
      return data
    end

    # Flatten form fields in document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_fields_flatten_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_fields_flatten ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_fields_flatten"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields/flatten".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_fields_flatten\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.zip)
    # @param html_file_name Name of HTML file in ZIP.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_html_in_storage_to_pdf(name, src_path, html_file_name, opts = {})
      data, _status_code, _headers = put_html_in_storage_to_pdf_with_http_info(name, src_path, html_file_name, opts)
      return data
    end

    # Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.zip)
    # @param html_file_name Name of HTML file in ZIP.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_html_in_storage_to_pdf_with_http_info(name, src_path, html_file_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_html_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_html_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_html_in_storage_to_pdf"
      end
      # verify the required parameter 'html_file_name' is set
      if @api_client.config.client_side_validation && html_file_name.nil?
        fail ArgumentError, "Missing the required parameter 'html_file_name' when calling PdfApi.put_html_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/html".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'htmlFileName'] = html_file_name
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'isLandscape'] = opts[:'is_landscape'] if !opts[:'is_landscape'].nil?
      query_params[:'marginLeft'] = opts[:'margin_left'] if !opts[:'margin_left'].nil?
      query_params[:'marginBottom'] = opts[:'margin_bottom'] if !opts[:'margin_bottom'].nil?
      query_params[:'marginRight'] = opts[:'margin_right'] if !opts[:'margin_right'].nil?
      query_params[:'marginTop'] = opts[:'margin_top'] if !opts[:'margin_top'].nil?
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_html_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert image file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param image_templates Image templates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_image_in_storage_to_pdf(name, image_templates, opts = {})
      data, _status_code, _headers = put_image_in_storage_to_pdf_with_http_info(name, image_templates, opts)
      return data
    end

    # Convert image file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param image_templates Image templates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_image_in_storage_to_pdf_with_http_info(name, image_templates, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_image_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_image_in_storage_to_pdf"
      end
      # verify the required parameter 'image_templates' is set
      if @api_client.config.client_side_validation && image_templates.nil?
        fail ArgumentError, "Missing the required parameter 'image_templates' when calling PdfApi.put_image_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/images".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(image_templates)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_image_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [SaaSposeResponse]
    def put_images_extract_as_gif(name, page_number, opts = {})
      data, _status_code, _headers = put_images_extract_as_gif_with_http_info(name, page_number, opts)
      return data
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_images_extract_as_gif_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_images_extract_as_gif ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_images_extract_as_gif"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_images_extract_as_gif"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images/extract/gif".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'destFolder'] = opts[:'dest_folder'] if !opts[:'dest_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_images_extract_as_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [SaaSposeResponse]
    def put_images_extract_as_jpeg(name, page_number, opts = {})
      data, _status_code, _headers = put_images_extract_as_jpeg_with_http_info(name, page_number, opts)
      return data
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_images_extract_as_jpeg_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_images_extract_as_jpeg ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_images_extract_as_jpeg"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_images_extract_as_jpeg"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images/extract/jpeg".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'destFolder'] = opts[:'dest_folder'] if !opts[:'dest_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_images_extract_as_jpeg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [SaaSposeResponse]
    def put_images_extract_as_png(name, page_number, opts = {})
      data, _status_code, _headers = put_images_extract_as_png_with_http_info(name, page_number, opts)
      return data
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_images_extract_as_png_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_images_extract_as_png ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_images_extract_as_png"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_images_extract_as_png"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images/extract/png".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'destFolder'] = opts[:'dest_folder'] if !opts[:'dest_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_images_extract_as_png\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [SaaSposeResponse]
    def put_images_extract_as_tiff(name, page_number, opts = {})
      data, _status_code, _headers = put_images_extract_as_tiff_with_http_info(name, page_number, opts)
      return data
    end

    # Extract document images in format specified to folder.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :dest_folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_images_extract_as_tiff_with_http_info(name, page_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_images_extract_as_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_images_extract_as_tiff"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_images_extract_as_tiff"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/images/extract/tiff".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'destFolder'] = opts[:'dest_folder'] if !opts[:'dest_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_images_extract_as_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.tex)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_la_te_x_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_la_te_x_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.tex)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_la_te_x_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_la_te_x_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_la_te_x_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_la_te_x_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/latex".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_la_te_x_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge a list of documents.
    # 
    # @param name Resulting documen name.
    # @param [Hash] opts the optional parameters
    # @option opts [MergeDocuments] :merge_documents with a list of documents.
    # @option opts [String] :storage Resulting document storage.
    # @option opts [String] :folder Resulting document folder.
    # @return [DocumentResponse]
    def put_merge_documents(name, opts = {})
      data, _status_code, _headers = put_merge_documents_with_http_info(name, opts)
      return data
    end

    # Merge a list of documents.
    # 
    # @param name Resulting documen name.
    # @param [Hash] opts the optional parameters
    # @option opts [MergeDocuments] :merge_documents with a list of documents.
    # @option opts [String] :storage Resulting document storage.
    # @option opts [String] :folder Resulting document folder.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def put_merge_documents_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_merge_documents ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_merge_documents"
      end
      # resource path
      local_var_path = "/pdf/{name}/merge".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'merge_documents'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_merge_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.mht)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_mht_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_mht_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.mht)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_mht_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_mht_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_mht_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_mht_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/mht".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_mht_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add page stamp.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param stamp with data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_add_stamp(name, page_number, stamp, opts = {})
      data, _status_code, _headers = put_page_add_stamp_with_http_info(name, page_number, stamp, opts)
      return data
    end

    # Add page stamp.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param stamp with data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_add_stamp_with_http_info(name, page_number, stamp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_add_stamp ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_add_stamp"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_add_stamp"
      end
      # verify the required parameter 'stamp' is set
      if @api_client.config.client_side_validation && stamp.nil?
        fail ArgumentError, "Missing the required parameter 'stamp' when calling PdfApi.put_page_add_stamp"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/stamp".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(stamp)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_add_stamp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to bmp image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_convert_to_bmp(name, page_number, out_path, opts = {})
      data, _status_code, _headers = put_page_convert_to_bmp_with_http_info(name, page_number, out_path, opts)
      return data
    end

    # Convert document page to bmp image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_convert_to_bmp_with_http_info(name, page_number, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_convert_to_bmp ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_convert_to_bmp"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_convert_to_bmp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_page_convert_to_bmp"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/bmp".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_convert_to_bmp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to emf image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_convert_to_emf(name, page_number, out_path, opts = {})
      data, _status_code, _headers = put_page_convert_to_emf_with_http_info(name, page_number, out_path, opts)
      return data
    end

    # Convert document page to emf image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_convert_to_emf_with_http_info(name, page_number, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_convert_to_emf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_convert_to_emf"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_convert_to_emf"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_page_convert_to_emf"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/emf".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_convert_to_emf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to gif image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_convert_to_gif(name, page_number, out_path, opts = {})
      data, _status_code, _headers = put_page_convert_to_gif_with_http_info(name, page_number, out_path, opts)
      return data
    end

    # Convert document page to gif image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_convert_to_gif_with_http_info(name, page_number, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_convert_to_gif ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_convert_to_gif"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_convert_to_gif"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_page_convert_to_gif"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/gif".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_convert_to_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Jpeg image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_convert_to_jpeg(name, page_number, out_path, opts = {})
      data, _status_code, _headers = put_page_convert_to_jpeg_with_http_info(name, page_number, out_path, opts)
      return data
    end

    # Convert document page to Jpeg image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_convert_to_jpeg_with_http_info(name, page_number, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_convert_to_jpeg ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_convert_to_jpeg"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_convert_to_jpeg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_page_convert_to_jpeg"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/jpeg".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_convert_to_jpeg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to png image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_convert_to_png(name, page_number, out_path, opts = {})
      data, _status_code, _headers = put_page_convert_to_png_with_http_info(name, page_number, out_path, opts)
      return data
    end

    # Convert document page to png image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_convert_to_png_with_http_info(name, page_number, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_convert_to_png ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_convert_to_png"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_convert_to_png"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_page_convert_to_png"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/png".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_convert_to_png\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document page to Tiff image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_page_convert_to_tiff(name, page_number, out_path, opts = {})
      data, _status_code, _headers = put_page_convert_to_tiff_with_http_info(name, page_number, out_path, opts)
      return data
    end

    # Convert document page to Tiff image and save in storage.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param out_path The out path of result image.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The converted image width.
    # @option opts [Integer] :height The converted image height.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_page_convert_to_tiff_with_http_info(name, page_number, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_page_convert_to_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_page_convert_to_tiff"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling PdfApi.put_page_convert_to_tiff"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_page_convert_to_tiff"
      end
      # resource path
      local_var_path = "/pdf/{name}/pages/{pageNumber}/convert/tiff".sub('{' + 'name' + '}', name.to_s).sub('{' + 'pageNumber' + '}', page_number.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_page_convert_to_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.pcl)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_pcl_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_pcl_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.pcl)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pcl_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pcl_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pcl_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_pcl_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/pcl".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pcl_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.doc)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :add_return_to_line_end Add return to line end.
    # @option opts [String] :format Allows to specify .doc or .docx file format.
    # @option opts [Integer] :image_resolution_x Image resolution X.
    # @option opts [Integer] :image_resolution_y Image resolution Y.
    # @option opts [Integer] :max_distance_between_text_lines Max distance between text lines.
    # @option opts [String] :mode Allows to control how a PDF document is converted into a word processing document.
    # @option opts [BOOLEAN] :recognize_bullets Recognize bullets.
    # @option opts [Float] :relative_horizontal_proximity Relative horizontal proximity.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_doc(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_doc_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.doc)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :add_return_to_line_end Add return to line end.
    # @option opts [String] :format Allows to specify .doc or .docx file format.
    # @option opts [Integer] :image_resolution_x Image resolution X.
    # @option opts [Integer] :image_resolution_y Image resolution Y.
    # @option opts [Integer] :max_distance_between_text_lines Max distance between text lines.
    # @option opts [String] :mode Allows to control how a PDF document is converted into a word processing document.
    # @option opts [BOOLEAN] :recognize_bullets Recognize bullets.
    # @option opts [Float] :relative_horizontal_proximity Relative horizontal proximity.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_doc_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_doc ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_doc"
      end
      # resource path
      local_var_path = "/pdf/convert/doc"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'addReturnToLineEnd'] = opts[:'add_return_to_line_end'] if !opts[:'add_return_to_line_end'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'imageResolutionX'] = opts[:'image_resolution_x'] if !opts[:'image_resolution_x'].nil?
      query_params[:'imageResolutionY'] = opts[:'image_resolution_y'] if !opts[:'image_resolution_y'].nil?
      query_params[:'maxDistanceBetweenTextLines'] = opts[:'max_distance_between_text_lines'] if !opts[:'max_distance_between_text_lines'].nil?
      query_params[:'mode'] = opts[:'mode'] if !opts[:'mode'].nil?
      query_params[:'recognizeBullets'] = opts[:'recognize_bullets'] if !opts[:'recognize_bullets'].nil?
      query_params[:'relativeHorizontalProximity'] = opts[:'relative_horizontal_proximity'] if !opts[:'relative_horizontal_proximity'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.epub)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_recognition_mode Рroperty tunes conversion for this or that desirable method of recognition of content.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_epub(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_epub_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.epub)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_recognition_mode Рroperty tunes conversion for this or that desirable method of recognition of content.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_epub_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_epub ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_epub"
      end
      # resource path
      local_var_path = "/pdf/convert/epub"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'contentRecognitionMode'] = opts[:'content_recognition_mode'] if !opts[:'content_recognition_mode'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_epub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to Html format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.html)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :additional_margin_width_in_points Defines width of margin that will be forcibly left around that output HTML-areas.
    # @option opts [BOOLEAN] :compress_svg_graphics_if_any The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
    # @option opts [BOOLEAN] :convert_marked_content_to_layers If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
    # @option opts [String] :default_font_name Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
    # @option opts [String] :document_type Result document type.
    # @option opts [BOOLEAN] :fixed_layout The value indicating whether that HTML is created as fixed layout.
    # @option opts [Integer] :image_resolution Resolution for image rendering.
    # @option opts [Integer] :minimal_line_width This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
    # @option opts [BOOLEAN] :prevent_glyphs_grouping This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
    # @option opts [BOOLEAN] :split_css_into_pages When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page.
    # @option opts [BOOLEAN] :split_into_pages The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
    # @option opts [BOOLEAN] :use_z_order If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
    # @option opts [String] :antialiasing_processing The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
    # @option opts [String] :css_class_names_prefix When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
    # @option opts [Array<Integer>] :explicit_list_of_saved_pages With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
    # @option opts [String] :font_encoding_strategy Defines encoding special rule to tune PDF decoding for current document.
    # @option opts [String] :font_saving_mode Defines font saving mode that will be used during saving of PDF to desirable format.
    # @option opts [String] :html_markup_generation_mode Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
    # @option opts [String] :letters_positioning_method The mode of positioning of letters in words in result HTML.
    # @option opts [BOOLEAN] :pages_flow_type_depends_on_viewers_screen_size If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
    # @option opts [String] :parts_embedding_mode It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
    # @option opts [String] :raster_images_saving_mode Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
    # @option opts [BOOLEAN] :remove_empty_areas_on_top_and_bottom Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
    # @option opts [BOOLEAN] :save_shadowed_texts_as_transparent_texts Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
    # @option opts [BOOLEAN] :save_transparent_texts Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
    # @option opts [String] :special_folder_for_all_images The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [String] :special_folder_for_svg_images The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [BOOLEAN] :try_save_text_underlining_and_strikeouting_in_css PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_html(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_html_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to Html format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.html)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :additional_margin_width_in_points Defines width of margin that will be forcibly left around that output HTML-areas.
    # @option opts [BOOLEAN] :compress_svg_graphics_if_any The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
    # @option opts [BOOLEAN] :convert_marked_content_to_layers If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
    # @option opts [String] :default_font_name Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
    # @option opts [String] :document_type Result document type.
    # @option opts [BOOLEAN] :fixed_layout The value indicating whether that HTML is created as fixed layout.
    # @option opts [Integer] :image_resolution Resolution for image rendering.
    # @option opts [Integer] :minimal_line_width This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
    # @option opts [BOOLEAN] :prevent_glyphs_grouping This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
    # @option opts [BOOLEAN] :split_css_into_pages When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page.
    # @option opts [BOOLEAN] :split_into_pages The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
    # @option opts [BOOLEAN] :use_z_order If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
    # @option opts [String] :antialiasing_processing The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
    # @option opts [String] :css_class_names_prefix When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
    # @option opts [Array<Integer>] :explicit_list_of_saved_pages With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
    # @option opts [String] :font_encoding_strategy Defines encoding special rule to tune PDF decoding for current document.
    # @option opts [String] :font_saving_mode Defines font saving mode that will be used during saving of PDF to desirable format.
    # @option opts [String] :html_markup_generation_mode Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
    # @option opts [String] :letters_positioning_method The mode of positioning of letters in words in result HTML.
    # @option opts [BOOLEAN] :pages_flow_type_depends_on_viewers_screen_size If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
    # @option opts [String] :parts_embedding_mode It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
    # @option opts [String] :raster_images_saving_mode Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
    # @option opts [BOOLEAN] :remove_empty_areas_on_top_and_bottom Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
    # @option opts [BOOLEAN] :save_shadowed_texts_as_transparent_texts Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
    # @option opts [BOOLEAN] :save_transparent_texts Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
    # @option opts [String] :special_folder_for_all_images The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [String] :special_folder_for_svg_images The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [BOOLEAN] :try_save_text_underlining_and_strikeouting_in_css PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_html_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_html ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_html"
      end
      # resource path
      local_var_path = "/pdf/convert/html"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'additionalMarginWidthInPoints'] = opts[:'additional_margin_width_in_points'] if !opts[:'additional_margin_width_in_points'].nil?
      query_params[:'compressSvgGraphicsIfAny'] = opts[:'compress_svg_graphics_if_any'] if !opts[:'compress_svg_graphics_if_any'].nil?
      query_params[:'convertMarkedContentToLayers'] = opts[:'convert_marked_content_to_layers'] if !opts[:'convert_marked_content_to_layers'].nil?
      query_params[:'defaultFontName'] = opts[:'default_font_name'] if !opts[:'default_font_name'].nil?
      query_params[:'documentType'] = opts[:'document_type'] if !opts[:'document_type'].nil?
      query_params[:'fixedLayout'] = opts[:'fixed_layout'] if !opts[:'fixed_layout'].nil?
      query_params[:'imageResolution'] = opts[:'image_resolution'] if !opts[:'image_resolution'].nil?
      query_params[:'minimalLineWidth'] = opts[:'minimal_line_width'] if !opts[:'minimal_line_width'].nil?
      query_params[:'preventGlyphsGrouping'] = opts[:'prevent_glyphs_grouping'] if !opts[:'prevent_glyphs_grouping'].nil?
      query_params[:'splitCssIntoPages'] = opts[:'split_css_into_pages'] if !opts[:'split_css_into_pages'].nil?
      query_params[:'splitIntoPages'] = opts[:'split_into_pages'] if !opts[:'split_into_pages'].nil?
      query_params[:'useZOrder'] = opts[:'use_z_order'] if !opts[:'use_z_order'].nil?
      query_params[:'antialiasingProcessing'] = opts[:'antialiasing_processing'] if !opts[:'antialiasing_processing'].nil?
      query_params[:'cssClassNamesPrefix'] = opts[:'css_class_names_prefix'] if !opts[:'css_class_names_prefix'].nil?
      query_params[:'explicitListOfSavedPages'] = @api_client.build_collection_param(opts[:'explicit_list_of_saved_pages'], :multi) if !opts[:'explicit_list_of_saved_pages'].nil?
      query_params[:'fontEncodingStrategy'] = opts[:'font_encoding_strategy'] if !opts[:'font_encoding_strategy'].nil?
      query_params[:'fontSavingMode'] = opts[:'font_saving_mode'] if !opts[:'font_saving_mode'].nil?
      query_params[:'htmlMarkupGenerationMode'] = opts[:'html_markup_generation_mode'] if !opts[:'html_markup_generation_mode'].nil?
      query_params[:'lettersPositioningMethod'] = opts[:'letters_positioning_method'] if !opts[:'letters_positioning_method'].nil?
      query_params[:'pagesFlowTypeDependsOnViewersScreenSize'] = opts[:'pages_flow_type_depends_on_viewers_screen_size'] if !opts[:'pages_flow_type_depends_on_viewers_screen_size'].nil?
      query_params[:'partsEmbeddingMode'] = opts[:'parts_embedding_mode'] if !opts[:'parts_embedding_mode'].nil?
      query_params[:'rasterImagesSavingMode'] = opts[:'raster_images_saving_mode'] if !opts[:'raster_images_saving_mode'].nil?
      query_params[:'removeEmptyAreasOnTopAndBottom'] = opts[:'remove_empty_areas_on_top_and_bottom'] if !opts[:'remove_empty_areas_on_top_and_bottom'].nil?
      query_params[:'saveShadowedTextsAsTransparentTexts'] = opts[:'save_shadowed_texts_as_transparent_texts'] if !opts[:'save_shadowed_texts_as_transparent_texts'].nil?
      query_params[:'saveTransparentTexts'] = opts[:'save_transparent_texts'] if !opts[:'save_transparent_texts'].nil?
      query_params[:'specialFolderForAllImages'] = opts[:'special_folder_for_all_images'] if !opts[:'special_folder_for_all_images'].nil?
      query_params[:'specialFolderForSvgImages'] = opts[:'special_folder_for_svg_images'] if !opts[:'special_folder_for_svg_images'].nil?
      query_params[:'trySaveTextUnderliningAndStrikeoutingInCss'] = opts[:'try_save_text_underlining_and_strikeouting_in_css'] if !opts[:'try_save_text_underlining_and_strikeouting_in_css'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tex)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :pages_count Pages count.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_la_te_x(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_la_te_x_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tex)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :pages_count Pages count.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_la_te_x_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_la_te_x ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_la_te_x"
      end
      # resource path
      local_var_path = "/pdf/convert/latex"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'pagesCount'] = opts[:'pages_count'] if !opts[:'pages_count'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_la_te_x\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.mobixml)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_mobi_xml(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_mobi_xml_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.mobixml)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_mobi_xml_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_mobi_xml ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_mobi_xml"
      end
      # resource path
      local_var_path = "/pdf/convert/mobixml"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_mobi_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param type Type of PdfA format.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_pdf_a(out_path, type, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_pdf_a_with_http_info(out_path, type, opts)
      return data
    end

    # Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param type Type of PdfA format.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_pdf_a_with_http_info(out_path, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_pdf_a ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_pdf_a"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling PdfApi.put_pdf_in_request_to_pdf_a"
      end
      # resource path
      local_var_path = "/pdf/convert/pdfa"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'type'] = type

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_pdf_a\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pptx)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :separate_images Separate images.
    # @option opts [BOOLEAN] :slides_as_images Slides as images.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_pptx(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_pptx_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pptx)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :separate_images Separate images.
    # @option opts [BOOLEAN] :slides_as_images Slides as images.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_pptx_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_pptx ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_pptx"
      end
      # resource path
      local_var_path = "/pdf/convert/pptx"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'separateImages'] = opts[:'separate_images'] if !opts[:'separate_images'].nil?
      query_params[:'slidesAsImages'] = opts[:'slides_as_images'] if !opts[:'slides_as_images'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_pptx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :compress_output_to_zip_archive Specifies whether output will be created as one zip-archive.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_svg(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_svg_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :compress_output_to_zip_archive Specifies whether output will be created as one zip-archive.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_svg_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_svg ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_svg"
      end
      # resource path
      local_var_path = "/pdf/convert/svg"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'compressOutputToZipArchive'] = opts[:'compress_output_to_zip_archive'] if !opts[:'compress_output_to_zip_archive'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_svg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tiff)
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :brightness Image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_tiff(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_tiff_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tiff)
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :brightness Image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_tiff_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_tiff ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_tiff"
      end
      # resource path
      local_var_path = "/pdf/convert/tiff"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'brightness'] = opts[:'brightness'] if !opts[:'brightness'].nil?
      query_params[:'compression'] = opts[:'compression'] if !opts[:'compression'].nil?
      query_params[:'colorDepth'] = opts[:'color_depth'] if !opts[:'color_depth'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'orientation'] = opts[:'orientation'] if !opts[:'orientation'].nil?
      query_params[:'skipBlankPages'] = opts[:'skip_blank_pages'] if !opts[:'skip_blank_pages'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'xResolution'] = opts[:'x_resolution'] if !opts[:'x_resolution'].nil?
      query_params[:'yResolution'] = opts[:'y_resolution'] if !opts[:'y_resolution'].nil?
      query_params[:'pageIndex'] = opts[:'page_index'] if !opts[:'page_index'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xls)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :insert_blank_column_at_first Insert blank column at first
    # @option opts [BOOLEAN] :minimize_the_number_of_worksheets Minimize the number of worksheets
    # @option opts [Float] :scale_factor Scale factor
    # @option opts [BOOLEAN] :uniform_worksheets Uniform worksheets
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_xls(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_xls_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xls)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :insert_blank_column_at_first Insert blank column at first
    # @option opts [BOOLEAN] :minimize_the_number_of_worksheets Minimize the number of worksheets
    # @option opts [Float] :scale_factor Scale factor
    # @option opts [BOOLEAN] :uniform_worksheets Uniform worksheets
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_xls_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_xls ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_xls"
      end
      # resource path
      local_var_path = "/pdf/convert/xls"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'insertBlankColumnAtFirst'] = opts[:'insert_blank_column_at_first'] if !opts[:'insert_blank_column_at_first'].nil?
      query_params[:'minimizeTheNumberOfWorksheets'] = opts[:'minimize_the_number_of_worksheets'] if !opts[:'minimize_the_number_of_worksheets'].nil?
      query_params[:'scaleFactor'] = opts[:'scale_factor'] if !opts[:'scale_factor'].nil?
      query_params[:'uniformWorksheets'] = opts[:'uniform_worksheets'] if !opts[:'uniform_worksheets'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_xls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to XML format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_xml(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_xml_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to XML format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_xml_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_xml ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_xml"
      end
      # resource path
      local_var_path = "/pdf/convert/xml"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_pdf_in_request_to_xps(out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_request_to_xps_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_request_to_xps_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_request_to_xps ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_request_to_xps"
      end
      # resource path
      local_var_path = "/pdf/convert/xps"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_request_to_xps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.doc)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :add_return_to_line_end Add return to line end.
    # @option opts [String] :format Allows to specify .doc or .docx file format.
    # @option opts [Integer] :image_resolution_x Image resolution X.
    # @option opts [Integer] :image_resolution_y Image resolution Y.
    # @option opts [Integer] :max_distance_between_text_lines Max distance between text lines.
    # @option opts [String] :mode Allows to control how a PDF document is converted into a word processing document.
    # @option opts [BOOLEAN] :recognize_bullets Recognize bullets.
    # @option opts [Float] :relative_horizontal_proximity Relative horizontal proximity.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_doc(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_doc_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.doc)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :add_return_to_line_end Add return to line end.
    # @option opts [String] :format Allows to specify .doc or .docx file format.
    # @option opts [Integer] :image_resolution_x Image resolution X.
    # @option opts [Integer] :image_resolution_y Image resolution Y.
    # @option opts [Integer] :max_distance_between_text_lines Max distance between text lines.
    # @option opts [String] :mode Allows to control how a PDF document is converted into a word processing document.
    # @option opts [BOOLEAN] :recognize_bullets Recognize bullets.
    # @option opts [Float] :relative_horizontal_proximity Relative horizontal proximity.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_doc_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_doc ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_doc"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_doc"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/doc".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'addReturnToLineEnd'] = opts[:'add_return_to_line_end'] if !opts[:'add_return_to_line_end'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'imageResolutionX'] = opts[:'image_resolution_x'] if !opts[:'image_resolution_x'].nil?
      query_params[:'imageResolutionY'] = opts[:'image_resolution_y'] if !opts[:'image_resolution_y'].nil?
      query_params[:'maxDistanceBetweenTextLines'] = opts[:'max_distance_between_text_lines'] if !opts[:'max_distance_between_text_lines'].nil?
      query_params[:'mode'] = opts[:'mode'] if !opts[:'mode'].nil?
      query_params[:'recognizeBullets'] = opts[:'recognize_bullets'] if !opts[:'recognize_bullets'].nil?
      query_params[:'relativeHorizontalProximity'] = opts[:'relative_horizontal_proximity'] if !opts[:'relative_horizontal_proximity'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.epub)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_recognition_mode Рroperty tunes conversion for this or that desirable method of recognition of content.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_epub(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_epub_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.epub)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_recognition_mode Рroperty tunes conversion for this or that desirable method of recognition of content.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_epub_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_epub ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_epub"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_epub"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/epub".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'contentRecognitionMode'] = opts[:'content_recognition_mode'] if !opts[:'content_recognition_mode'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_epub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to Html format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.html)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :additional_margin_width_in_points Defines width of margin that will be forcibly left around that output HTML-areas.
    # @option opts [BOOLEAN] :compress_svg_graphics_if_any The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
    # @option opts [BOOLEAN] :convert_marked_content_to_layers If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
    # @option opts [String] :default_font_name Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
    # @option opts [String] :document_type Result document type.
    # @option opts [BOOLEAN] :fixed_layout The value indicating whether that HTML is created as fixed layout.
    # @option opts [Integer] :image_resolution Resolution for image rendering.
    # @option opts [Integer] :minimal_line_width This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
    # @option opts [BOOLEAN] :prevent_glyphs_grouping This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
    # @option opts [BOOLEAN] :split_css_into_pages When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page.
    # @option opts [BOOLEAN] :split_into_pages The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
    # @option opts [BOOLEAN] :use_z_order If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
    # @option opts [String] :antialiasing_processing The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
    # @option opts [String] :css_class_names_prefix When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
    # @option opts [Array<Integer>] :explicit_list_of_saved_pages With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
    # @option opts [String] :font_encoding_strategy Defines encoding special rule to tune PDF decoding for current document.
    # @option opts [String] :font_saving_mode Defines font saving mode that will be used during saving of PDF to desirable format.
    # @option opts [String] :html_markup_generation_mode Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
    # @option opts [String] :letters_positioning_method The mode of positioning of letters in words in result HTML.
    # @option opts [BOOLEAN] :pages_flow_type_depends_on_viewers_screen_size If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
    # @option opts [String] :parts_embedding_mode It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
    # @option opts [String] :raster_images_saving_mode Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
    # @option opts [BOOLEAN] :remove_empty_areas_on_top_and_bottom Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
    # @option opts [BOOLEAN] :save_shadowed_texts_as_transparent_texts Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
    # @option opts [BOOLEAN] :save_transparent_texts Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
    # @option opts [String] :special_folder_for_all_images The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [String] :special_folder_for_svg_images The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [BOOLEAN] :try_save_text_underlining_and_strikeouting_in_css PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_html(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_html_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to Html format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.html)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :additional_margin_width_in_points Defines width of margin that will be forcibly left around that output HTML-areas.
    # @option opts [BOOLEAN] :compress_svg_graphics_if_any The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
    # @option opts [BOOLEAN] :convert_marked_content_to_layers If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \&quot;data-pdflayer\&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
    # @option opts [String] :default_font_name Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
    # @option opts [String] :document_type Result document type.
    # @option opts [BOOLEAN] :fixed_layout The value indicating whether that HTML is created as fixed layout.
    # @option opts [Integer] :image_resolution Resolution for image rendering.
    # @option opts [Integer] :minimal_line_width This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
    # @option opts [BOOLEAN] :prevent_glyphs_grouping This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
    # @option opts [BOOLEAN] :split_css_into_pages When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page.
    # @option opts [BOOLEAN] :split_into_pages The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
    # @option opts [BOOLEAN] :use_z_order If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
    # @option opts [String] :antialiasing_processing The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
    # @option opts [String] :css_class_names_prefix When PDFtoHTML converter generates result CSSs, CSS class names (something like \&quot;.stl_01 {}\&quot; ... \&quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
    # @option opts [Array<Integer>] :explicit_list_of_saved_pages With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
    # @option opts [String] :font_encoding_strategy Defines encoding special rule to tune PDF decoding for current document.
    # @option opts [String] :font_saving_mode Defines font saving mode that will be used during saving of PDF to desirable format.
    # @option opts [String] :html_markup_generation_mode Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
    # @option opts [String] :letters_positioning_method The mode of positioning of letters in words in result HTML.
    # @option opts [BOOLEAN] :pages_flow_type_depends_on_viewers_screen_size If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
    # @option opts [String] :parts_embedding_mode It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
    # @option opts [String] :raster_images_saving_mode Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
    # @option opts [BOOLEAN] :remove_empty_areas_on_top_and_bottom Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
    # @option opts [BOOLEAN] :save_shadowed_texts_as_transparent_texts Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
    # @option opts [BOOLEAN] :save_transparent_texts Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
    # @option opts [String] :special_folder_for_all_images The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [String] :special_folder_for_svg_images The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
    # @option opts [BOOLEAN] :try_save_text_underlining_and_strikeouting_in_css PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_html_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_html ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_html"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_html"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/html".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'additionalMarginWidthInPoints'] = opts[:'additional_margin_width_in_points'] if !opts[:'additional_margin_width_in_points'].nil?
      query_params[:'compressSvgGraphicsIfAny'] = opts[:'compress_svg_graphics_if_any'] if !opts[:'compress_svg_graphics_if_any'].nil?
      query_params[:'convertMarkedContentToLayers'] = opts[:'convert_marked_content_to_layers'] if !opts[:'convert_marked_content_to_layers'].nil?
      query_params[:'defaultFontName'] = opts[:'default_font_name'] if !opts[:'default_font_name'].nil?
      query_params[:'documentType'] = opts[:'document_type'] if !opts[:'document_type'].nil?
      query_params[:'fixedLayout'] = opts[:'fixed_layout'] if !opts[:'fixed_layout'].nil?
      query_params[:'imageResolution'] = opts[:'image_resolution'] if !opts[:'image_resolution'].nil?
      query_params[:'minimalLineWidth'] = opts[:'minimal_line_width'] if !opts[:'minimal_line_width'].nil?
      query_params[:'preventGlyphsGrouping'] = opts[:'prevent_glyphs_grouping'] if !opts[:'prevent_glyphs_grouping'].nil?
      query_params[:'splitCssIntoPages'] = opts[:'split_css_into_pages'] if !opts[:'split_css_into_pages'].nil?
      query_params[:'splitIntoPages'] = opts[:'split_into_pages'] if !opts[:'split_into_pages'].nil?
      query_params[:'useZOrder'] = opts[:'use_z_order'] if !opts[:'use_z_order'].nil?
      query_params[:'antialiasingProcessing'] = opts[:'antialiasing_processing'] if !opts[:'antialiasing_processing'].nil?
      query_params[:'cssClassNamesPrefix'] = opts[:'css_class_names_prefix'] if !opts[:'css_class_names_prefix'].nil?
      query_params[:'explicitListOfSavedPages'] = @api_client.build_collection_param(opts[:'explicit_list_of_saved_pages'], :multi) if !opts[:'explicit_list_of_saved_pages'].nil?
      query_params[:'fontEncodingStrategy'] = opts[:'font_encoding_strategy'] if !opts[:'font_encoding_strategy'].nil?
      query_params[:'fontSavingMode'] = opts[:'font_saving_mode'] if !opts[:'font_saving_mode'].nil?
      query_params[:'htmlMarkupGenerationMode'] = opts[:'html_markup_generation_mode'] if !opts[:'html_markup_generation_mode'].nil?
      query_params[:'lettersPositioningMethod'] = opts[:'letters_positioning_method'] if !opts[:'letters_positioning_method'].nil?
      query_params[:'pagesFlowTypeDependsOnViewersScreenSize'] = opts[:'pages_flow_type_depends_on_viewers_screen_size'] if !opts[:'pages_flow_type_depends_on_viewers_screen_size'].nil?
      query_params[:'partsEmbeddingMode'] = opts[:'parts_embedding_mode'] if !opts[:'parts_embedding_mode'].nil?
      query_params[:'rasterImagesSavingMode'] = opts[:'raster_images_saving_mode'] if !opts[:'raster_images_saving_mode'].nil?
      query_params[:'removeEmptyAreasOnTopAndBottom'] = opts[:'remove_empty_areas_on_top_and_bottom'] if !opts[:'remove_empty_areas_on_top_and_bottom'].nil?
      query_params[:'saveShadowedTextsAsTransparentTexts'] = opts[:'save_shadowed_texts_as_transparent_texts'] if !opts[:'save_shadowed_texts_as_transparent_texts'].nil?
      query_params[:'saveTransparentTexts'] = opts[:'save_transparent_texts'] if !opts[:'save_transparent_texts'].nil?
      query_params[:'specialFolderForAllImages'] = opts[:'special_folder_for_all_images'] if !opts[:'special_folder_for_all_images'].nil?
      query_params[:'specialFolderForSvgImages'] = opts[:'special_folder_for_svg_images'] if !opts[:'special_folder_for_svg_images'].nil?
      query_params[:'trySaveTextUnderliningAndStrikeoutingInCss'] = opts[:'try_save_text_underlining_and_strikeouting_in_css'] if !opts[:'try_save_text_underlining_and_strikeouting_in_css'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tex)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :pages_count Pages count.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_la_te_x(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_la_te_x_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tex)
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :pages_count Pages count.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_la_te_x_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_la_te_x ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_la_te_x"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_la_te_x"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/latex".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'pagesCount'] = opts[:'pages_count'] if !opts[:'pages_count'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_la_te_x\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.mobixml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_mobi_xml(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_mobi_xml_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.mobixml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_mobi_xml_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_mobi_xml ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_mobi_xml"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_mobi_xml"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/mobixml".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_mobi_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param type Type of PdfA format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_pdf_a(name, out_path, type, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_pdf_a_with_http_info(name, out_path, type, opts)
      return data
    end

    # Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param type Type of PdfA format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_pdf_a_with_http_info(name, out_path, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_pdf_a ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_pdf_a"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_pdf_a"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling PdfApi.put_pdf_in_storage_to_pdf_a"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/pdfa".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'type'] = type
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_pdf_a\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pptx)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :separate_images Separate images.
    # @option opts [BOOLEAN] :slides_as_images Slides as images.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_pptx(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_pptx_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pptx)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :separate_images Separate images.
    # @option opts [BOOLEAN] :slides_as_images Slides as images.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_pptx_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_pptx ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_pptx"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_pptx"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/pptx".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'separateImages'] = opts[:'separate_images'] if !opts[:'separate_images'].nil?
      query_params[:'slidesAsImages'] = opts[:'slides_as_images'] if !opts[:'slides_as_images'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_pptx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :compress_output_to_zip_archive Specifies whether output will be created as one zip-archive.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_svg(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_svg_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :compress_output_to_zip_archive Specifies whether output will be created as one zip-archive.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_svg_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_svg ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_svg"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/svg".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'compressOutputToZipArchive'] = opts[:'compress_output_to_zip_archive'] if !opts[:'compress_output_to_zip_archive'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_svg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tiff)
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :brightness Image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_tiff(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_tiff_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.tiff)
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :brightness Image brightness.
    # @option opts [String] :compression Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
    # @option opts [String] :color_depth Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
    # @option opts [Integer] :left_margin Left image margin.
    # @option opts [Integer] :right_margin Right image margin.
    # @option opts [Integer] :top_margin Top image margin.
    # @option opts [Integer] :bottom_margin Bottom image margin.
    # @option opts [String] :orientation Image orientation. Possible values are: None, Landscape, Portait.
    # @option opts [BOOLEAN] :skip_blank_pages Skip blank pages flag.
    # @option opts [Integer] :width Image width.
    # @option opts [Integer] :height Image height.
    # @option opts [Integer] :x_resolution Horizontal resolution.
    # @option opts [Integer] :y_resolution Vertical resolution.
    # @option opts [Integer] :page_index Start page to export.
    # @option opts [Integer] :page_count Number of pages to export.
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_tiff_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_tiff"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_tiff"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/tiff".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'brightness'] = opts[:'brightness'] if !opts[:'brightness'].nil?
      query_params[:'compression'] = opts[:'compression'] if !opts[:'compression'].nil?
      query_params[:'colorDepth'] = opts[:'color_depth'] if !opts[:'color_depth'].nil?
      query_params[:'leftMargin'] = opts[:'left_margin'] if !opts[:'left_margin'].nil?
      query_params[:'rightMargin'] = opts[:'right_margin'] if !opts[:'right_margin'].nil?
      query_params[:'topMargin'] = opts[:'top_margin'] if !opts[:'top_margin'].nil?
      query_params[:'bottomMargin'] = opts[:'bottom_margin'] if !opts[:'bottom_margin'].nil?
      query_params[:'orientation'] = opts[:'orientation'] if !opts[:'orientation'].nil?
      query_params[:'skipBlankPages'] = opts[:'skip_blank_pages'] if !opts[:'skip_blank_pages'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'xResolution'] = opts[:'x_resolution'] if !opts[:'x_resolution'].nil?
      query_params[:'yResolution'] = opts[:'y_resolution'] if !opts[:'y_resolution'].nil?
      query_params[:'pageIndex'] = opts[:'page_index'] if !opts[:'page_index'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xls)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :insert_blank_column_at_first Insert blank column at first
    # @option opts [BOOLEAN] :minimize_the_number_of_worksheets Minimize the number of worksheets
    # @option opts [Float] :scale_factor Scale factor
    # @option opts [BOOLEAN] :uniform_worksheets Uniform worksheets
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_xls(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_xls_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xls)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :insert_blank_column_at_first Insert blank column at first
    # @option opts [BOOLEAN] :minimize_the_number_of_worksheets Minimize the number of worksheets
    # @option opts [Float] :scale_factor Scale factor
    # @option opts [BOOLEAN] :uniform_worksheets Uniform worksheets
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_xls_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_xls ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_xls"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_xls"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xls".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'insertBlankColumnAtFirst'] = opts[:'insert_blank_column_at_first'] if !opts[:'insert_blank_column_at_first'].nil?
      query_params[:'minimizeTheNumberOfWorksheets'] = opts[:'minimize_the_number_of_worksheets'] if !opts[:'minimize_the_number_of_worksheets'].nil?
      query_params[:'scaleFactor'] = opts[:'scale_factor'] if !opts[:'scale_factor'].nil?
      query_params[:'uniformWorksheets'] = opts[:'uniform_worksheets'] if !opts[:'uniform_worksheets'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_xls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to XML format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_xml(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_xml_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to XML format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_xml_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_xml ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_xml"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_xml"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xml".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_xml\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_pdf_in_storage_to_xps(name, out_path, opts = {})
      data, _status_code, _headers = put_pdf_in_storage_to_xps_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.xps)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_pdf_in_storage_to_xps_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_pdf_in_storage_to_xps ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_pdf_in_storage_to_xps"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_pdf_in_storage_to_xps"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xps".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_pdf_in_storage_to_xps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update privilege document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentPrivilege] :privileges Document privileges. 
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_privileges(name, opts = {})
      data, _status_code, _headers = put_privileges_with_http_info(name, opts)
      return data
    end

    # Update privilege document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentPrivilege] :privileges Document privileges. 
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_privileges_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_privileges ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_privileges"
      end
      # resource path
      local_var_path = "/pdf/{name}/privileges".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'privileges'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_privileges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.ps)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_ps_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_ps_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.ps)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_ps_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_ps_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_ps_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_ps_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/ps".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_ps_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create searchable PDF document. Generate OCR layer for images in input PDF document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :lang language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus 
    # @return [SaaSposeResponse]
    def put_searchable_document(name, opts = {})
      data, _status_code, _headers = put_searchable_document_with_http_info(name, opts)
      return data
    end

    # Create searchable PDF document. Generate OCR layer for images in input PDF document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @option opts [String] :lang language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus 
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_searchable_document_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_searchable_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_searchable_document"
      end
      # resource path
      local_var_path = "/pdf/{name}/ocr".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?
      query_params[:'lang'] = opts[:'lang'] if !opts[:'lang'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_searchable_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add/update document property.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentProperty] :property 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [DocumentPropertyResponse]
    def put_set_property(name, property_name, opts = {})
      data, _status_code, _headers = put_set_property_with_http_info(name, property_name, opts)
      return data
    end

    # Add/update document property.
    # 
    # @param name 
    # @param property_name 
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentProperty] :property 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [Array<(DocumentPropertyResponse, Fixnum, Hash)>] DocumentPropertyResponse data, response status code and response headers
    def put_set_property_with_http_info(name, property_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_set_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_set_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling PdfApi.put_set_property"
      end
      # resource path
      local_var_path = "/pdf/{name}/documentproperties/{propertyName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'propertyName' + '}', property_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'property'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_set_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :adjust_page_size Adjust page size
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_svg_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_svg_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.svg)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :adjust_page_size Adjust page size
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_svg_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_svg_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_svg_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_svg_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/svg".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'adjustPageSize'] = opts[:'adjust_page_size'] if !opts[:'adjust_page_size'].nil?
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'isLandscape'] = opts[:'is_landscape'] if !opts[:'is_landscape'].nil?
      query_params[:'marginLeft'] = opts[:'margin_left'] if !opts[:'margin_left'].nil?
      query_params[:'marginBottom'] = opts[:'margin_bottom'] if !opts[:'margin_bottom'].nil?
      query_params[:'marginRight'] = opts[:'margin_right'] if !opts[:'margin_right'].nil?
      query_params[:'marginTop'] = opts[:'margin_top'] if !opts[:'margin_top'].nil?
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_svg_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update field.
    # 
    # @param name The document name.
    # @param field_name The name of a field to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Field] :field with the field data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldResponse]
    def put_update_field(name, field_name, opts = {})
      data, _status_code, _headers = put_update_field_with_http_info(name, field_name, opts)
      return data
    end

    # Update field.
    # 
    # @param name The document name.
    # @param field_name The name of a field to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Field] :field with the field data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(FieldResponse, Fixnum, Hash)>] FieldResponse data, response status code and response headers
    def put_update_field_with_http_info(name, field_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_update_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_update_field"
      end
      # verify the required parameter 'field_name' is set
      if @api_client.config.client_side_validation && field_name.nil?
        fail ArgumentError, "Missing the required parameter 'field_name' when calling PdfApi.put_update_field"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields/{fieldName}".sub('{' + 'name' + '}', name.to_s).sub('{' + 'fieldName' + '}', field_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'field'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_update_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update fields.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Fields] :fields with the fields data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [FieldsResponse]
    def put_update_fields(name, opts = {})
      data, _status_code, _headers = put_update_fields_with_http_info(name, opts)
      return data
    end

    # Update fields.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [Fields] :fields with the fields data.
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(FieldsResponse, Fixnum, Hash)>] FieldsResponse data, response status code and response headers
    def put_update_fields_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_update_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_update_fields"
      end
      # resource path
      local_var_path = "/pdf/{name}/fields".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'storage'] = opts[:'storage'] if !opts[:'storage'].nil?
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'fields'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_update_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert web page to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param url Source url
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_web_in_storage_to_pdf(name, url, opts = {})
      data, _status_code, _headers = put_web_in_storage_to_pdf_with_http_info(name, url, opts)
      return data
    end

    # Convert web page to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param url Source url
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :height Page height
    # @option opts [Float] :width Page width
    # @option opts [BOOLEAN] :is_landscape Is page landscaped
    # @option opts [Float] :margin_left Page margin left
    # @option opts [Float] :margin_bottom Page margin bottom
    # @option opts [Float] :margin_right Page margin right
    # @option opts [Float] :margin_top Page margin top
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_web_in_storage_to_pdf_with_http_info(name, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_web_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_web_in_storage_to_pdf"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling PdfApi.put_web_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/web".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'url'] = url
      query_params[:'height'] = opts[:'height'] if !opts[:'height'].nil?
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'isLandscape'] = opts[:'is_landscape'] if !opts[:'is_landscape'].nil?
      query_params[:'marginLeft'] = opts[:'margin_left'] if !opts[:'margin_left'].nil?
      query_params[:'marginBottom'] = opts[:'margin_bottom'] if !opts[:'margin_bottom'].nil?
      query_params[:'marginRight'] = opts[:'margin_right'] if !opts[:'margin_right'].nil?
      query_params[:'marginTop'] = opts[:'margin_top'] if !opts[:'margin_top'].nil?
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_web_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [SaaSposeResponse]
    def put_xfa_pdf_in_request_to_acro_form(out_path, opts = {})
      data, _status_code, _headers = put_xfa_pdf_in_request_to_acro_form_with_http_info(out_path, opts)
      return data
    end

    # Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
    # 
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file A file to be converted.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_xfa_pdf_in_request_to_acro_form_with_http_info(out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_xfa_pdf_in_request_to_acro_form ..."
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_xfa_pdf_in_request_to_acro_form"
      end
      # resource path
      local_var_path = "/pdf/convert/xfatoacroform"

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil
      post_body =  opts[:'file'] if !opts[:'file'].nil?
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_xfa_pdf_in_request_to_acro_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [SaaSposeResponse]
    def put_xfa_pdf_in_storage_to_acro_form(name, out_path, opts = {})
      data, _status_code, _headers = put_xfa_pdf_in_storage_to_acro_form_with_http_info(name, out_path, opts)
      return data
    end

    # Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
    # 
    # @param name The document name.
    # @param out_path Full resulting filename (ex. /folder1/folder2/result.pdf)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder The document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_xfa_pdf_in_storage_to_acro_form_with_http_info(name, out_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_xfa_pdf_in_storage_to_acro_form ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_xfa_pdf_in_storage_to_acro_form"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling PdfApi.put_xfa_pdf_in_storage_to_acro_form"
      end
      # resource path
      local_var_path = "/pdf/{name}/convert/xfatoacroform".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path
      query_params[:'folder'] = opts[:'folder'] if !opts[:'folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_xfa_pdf_in_storage_to_acro_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xsl_file_path Full XSL source filename (ex. /folder1/folder2/template.xsl)
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_xml_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_xml_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.xml)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :xsl_file_path Full XSL source filename (ex. /folder1/folder2/template.xsl)
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_xml_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_xml_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_xml_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_xml_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/xml".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'xslFilePath'] = opts[:'xsl_file_path'] if !opts[:'xsl_file_path'].nil?
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_xml_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.xps)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_xps_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_xps_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.xps)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_xps_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_xps_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_xps_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_xps_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/xps".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_xps_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.xpsfo)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [SaaSposeResponse]
    def put_xsl_fo_in_storage_to_pdf(name, src_path, opts = {})
      data, _status_code, _headers = put_xsl_fo_in_storage_to_pdf_with_http_info(name, src_path, opts)
      return data
    end

    # Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
    # 
    # @param name The document name.
    # @param src_path Full source filename (ex. /folder1/folder2/template.xpsfo)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dst_folder The destination document folder.
    # @return [Array<(SaaSposeResponse, Fixnum, Hash)>] SaaSposeResponse data, response status code and response headers
    def put_xsl_fo_in_storage_to_pdf_with_http_info(name, src_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PdfApi.put_xsl_fo_in_storage_to_pdf ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling PdfApi.put_xsl_fo_in_storage_to_pdf"
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling PdfApi.put_xsl_fo_in_storage_to_pdf"
      end
      # resource path
      local_var_path = "/pdf/{name}/create/xslfo".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'srcPath'] = src_path
      query_params[:'dstFolder'] = opts[:'dst_folder'] if !opts[:'dst_folder'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      # Fix header in file
      post_body = nil

      # http body (model)
      # Fix header in file
      # post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaaSposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PdfApi#put_xsl_fo_in_storage_to_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
