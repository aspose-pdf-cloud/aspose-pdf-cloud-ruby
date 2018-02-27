=begin
--------------------------------------------------------------------------------------------------------------------
  Copyright (c) 2018 Aspose.Pdf for Cloud
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

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

    # Read document bookmarks.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [BookmarksResponse]
    def get_document_bookmarks(name, opts = {})
      data, _status_code, _headers = get_document_bookmarks_with_http_info(name, opts)
      return data
    end

    # Read document bookmarks.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [Array<(BookmarksResponse, Fixnum, Hash)>] BookmarksResponse data, response status code and response headers
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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BookmarksResponse')
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

    # Read document image by number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_image(name, page_number, image_number, opts = {})
      data, _status_code, _headers = get_image_with_http_info(name, page_number, image_number, opts)
      return data
    end

    # Read document image by number.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param image_number The image format.
    # @param [Hash] opts the optional parameters
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

    # Read document page info.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage The document storage.
    # @option opts [String] :folder The document folder.
    # @return [File]
    def get_page(name, page_number, opts = {})
      data, _status_code, _headers = get_page_with_http_info(name, page_number, opts)
      return data
    end

    # Read document page info.
    # 
    # @param name The document name.
    # @param page_number The page number.
    # @param [Hash] opts the optional parameters
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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
    # @param name 
    # @param page_number 
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format 
    # @option opts [String] :regex 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextRectsResponse]
    def get_page_text(name, page_number, x, y, width, height, opts = {})
      data, _status_code, _headers = get_page_text_with_http_info(name, page_number, x, y, width, height, opts)
      return data
    end

    # Read page text items.
    # 
    # @param name 
    # @param page_number 
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format 
    # @option opts [String] :regex 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

    # Read document text.
    # 
    # @param name 
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format 
    # @option opts [String] :regex 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
    # @return [TextRectsResponse]
    def get_text(name, x, y, width, height, opts = {})
      data, _status_code, _headers = get_text_with_http_info(name, x, y, width, height, opts)
      return data
    end

    # Read document text.
    # 
    # @param name 
    # @param x 
    # @param y 
    # @param width 
    # @param height 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :format 
    # @option opts [String] :regex 
    # @option opts [String] :storage 
    # @option opts [String] :folder 
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

    # Add text to PDF document page. Deprecate
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

    # Add text to PDF document page. Deprecate
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
    # @param name Name of the document to which text should be added.
    # @param page_number Number of page (starting with 1) to which text should be added.
    # @param [Hash] opts the optional parameters
    # @option opts [Paragraph] :paragraph Paragraph data.
    # @option opts [String] :storage File storage to be used.
    # @option opts [String] :folder Document folder.
    # @return [SaaSposeResponse]
    def put_add_text(name, page_number, opts = {})
      data, _status_code, _headers = put_add_text_with_http_info(name, page_number, opts)
      return data
    end

    # Add text to PDF document page.
    # 
    # @param name Name of the document to which text should be added.
    # @param page_number Number of page (starting with 1) to which text should be added.
    # @param [Hash] opts the optional parameters
    # @option opts [Paragraph] :paragraph Paragraph data.
    # @option opts [String] :storage File storage to be used.
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

      # http body (model)
      post_body = nil
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

    # Update field.
    # 
    # @param name The document name.
    # @param field_name The field name/
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
    # @param field_name The field name/
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
  end
end
