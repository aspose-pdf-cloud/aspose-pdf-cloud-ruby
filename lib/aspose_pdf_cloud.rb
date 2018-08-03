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

# Common files
require_relative 'aspose_pdf_cloud/api_client'
require_relative 'aspose_pdf_cloud/api_error'
require_relative 'aspose_pdf_cloud/version'
require_relative 'aspose_pdf_cloud/configuration'

# Models
require_relative 'aspose_pdf_cloud/models/antialiasing_processing_type'
require_relative 'aspose_pdf_cloud/models/append_document'
require_relative 'aspose_pdf_cloud/models/color'
require_relative 'aspose_pdf_cloud/models/color_depth'
require_relative 'aspose_pdf_cloud/models/compression_type'
require_relative 'aspose_pdf_cloud/models/doc_format'
require_relative 'aspose_pdf_cloud/models/doc_recognition_mode'
require_relative 'aspose_pdf_cloud/models/document_privilege'
require_relative 'aspose_pdf_cloud/models/epub_recognition_mode'
require_relative 'aspose_pdf_cloud/models/field_type'
require_relative 'aspose_pdf_cloud/models/font_encoding_rules'
require_relative 'aspose_pdf_cloud/models/font_saving_modes'
require_relative 'aspose_pdf_cloud/models/font_styles'
require_relative 'aspose_pdf_cloud/models/horizontal_alignment'
require_relative 'aspose_pdf_cloud/models/html_document_type'
require_relative 'aspose_pdf_cloud/models/html_markup_generation_modes'
require_relative 'aspose_pdf_cloud/models/http_status_code'
require_relative 'aspose_pdf_cloud/models/image_src_type'
require_relative 'aspose_pdf_cloud/models/image_template'
require_relative 'aspose_pdf_cloud/models/image_templates_request'
require_relative 'aspose_pdf_cloud/models/images_list_request'
require_relative 'aspose_pdf_cloud/models/letters_positioning_methods'
require_relative 'aspose_pdf_cloud/models/line_spacing'
require_relative 'aspose_pdf_cloud/models/link'
require_relative 'aspose_pdf_cloud/models/link_action_type'
require_relative 'aspose_pdf_cloud/models/link_element'
require_relative 'aspose_pdf_cloud/models/link_highlighting_mode'
require_relative 'aspose_pdf_cloud/models/margin_info'
require_relative 'aspose_pdf_cloud/models/merge_documents'
require_relative 'aspose_pdf_cloud/models/optimize_options'
require_relative 'aspose_pdf_cloud/models/page_word_count'
require_relative 'aspose_pdf_cloud/models/paragraph'
require_relative 'aspose_pdf_cloud/models/parts_embedding_modes'
require_relative 'aspose_pdf_cloud/models/pdf_a_type'
require_relative 'aspose_pdf_cloud/models/raster_images_saving_modes'
require_relative 'aspose_pdf_cloud/models/rectangle'
require_relative 'aspose_pdf_cloud/models/rotation'
require_relative 'aspose_pdf_cloud/models/saa_spose_response'
require_relative 'aspose_pdf_cloud/models/segment'
require_relative 'aspose_pdf_cloud/models/shape_type'
require_relative 'aspose_pdf_cloud/models/signature'
require_relative 'aspose_pdf_cloud/models/signature_type'
require_relative 'aspose_pdf_cloud/models/split_result'
require_relative 'aspose_pdf_cloud/models/stamp'
require_relative 'aspose_pdf_cloud/models/stamp_type'
require_relative 'aspose_pdf_cloud/models/text_horizontal_alignment'
require_relative 'aspose_pdf_cloud/models/text_line'
require_relative 'aspose_pdf_cloud/models/text_rect'
require_relative 'aspose_pdf_cloud/models/text_rects'
require_relative 'aspose_pdf_cloud/models/text_replace'
require_relative 'aspose_pdf_cloud/models/text_replace_list_request'
require_relative 'aspose_pdf_cloud/models/text_state'
require_relative 'aspose_pdf_cloud/models/tiff_export_options'
require_relative 'aspose_pdf_cloud/models/vertical_alignment'
require_relative 'aspose_pdf_cloud/models/word_count'
require_relative 'aspose_pdf_cloud/models/wrap_mode'
require_relative 'aspose_pdf_cloud/models/annotation'
require_relative 'aspose_pdf_cloud/models/annotation_response'
require_relative 'aspose_pdf_cloud/models/annotations'
require_relative 'aspose_pdf_cloud/models/annotations_response'
require_relative 'aspose_pdf_cloud/models/attachment'
require_relative 'aspose_pdf_cloud/models/attachment_response'
require_relative 'aspose_pdf_cloud/models/attachments'
require_relative 'aspose_pdf_cloud/models/attachments_response'
require_relative 'aspose_pdf_cloud/models/document'
require_relative 'aspose_pdf_cloud/models/document_pages_response'
require_relative 'aspose_pdf_cloud/models/document_properties'
require_relative 'aspose_pdf_cloud/models/document_properties_response'
require_relative 'aspose_pdf_cloud/models/document_property'
require_relative 'aspose_pdf_cloud/models/document_property_response'
require_relative 'aspose_pdf_cloud/models/document_response'
require_relative 'aspose_pdf_cloud/models/field'
require_relative 'aspose_pdf_cloud/models/field_response'
require_relative 'aspose_pdf_cloud/models/fields'
require_relative 'aspose_pdf_cloud/models/fields_response'
require_relative 'aspose_pdf_cloud/models/image'
require_relative 'aspose_pdf_cloud/models/image_response'
require_relative 'aspose_pdf_cloud/models/images'
require_relative 'aspose_pdf_cloud/models/images_response'
require_relative 'aspose_pdf_cloud/models/link_annotation'
require_relative 'aspose_pdf_cloud/models/link_annotation_response'
require_relative 'aspose_pdf_cloud/models/link_annotations'
require_relative 'aspose_pdf_cloud/models/link_annotations_response'
require_relative 'aspose_pdf_cloud/models/page'
require_relative 'aspose_pdf_cloud/models/pages'
require_relative 'aspose_pdf_cloud/models/signature_verify_response'
require_relative 'aspose_pdf_cloud/models/split_result_document'
require_relative 'aspose_pdf_cloud/models/split_result_response'
require_relative 'aspose_pdf_cloud/models/text_format'
require_relative 'aspose_pdf_cloud/models/text_format_response'
require_relative 'aspose_pdf_cloud/models/text_item'
require_relative 'aspose_pdf_cloud/models/text_item_response'
require_relative 'aspose_pdf_cloud/models/text_items'
require_relative 'aspose_pdf_cloud/models/text_items_response'
require_relative 'aspose_pdf_cloud/models/text_rects_response'
require_relative 'aspose_pdf_cloud/models/text_replace_request'
require_relative 'aspose_pdf_cloud/models/text_replace_response'
require_relative 'aspose_pdf_cloud/models/word_count_response'
require_relative 'aspose_pdf_cloud/models/document_text_replace_response'
require_relative 'aspose_pdf_cloud/models/page_text_replace_response'

# APIs
require_relative 'aspose_pdf_cloud/api/pdf_api'

module AsposePdfCloud
  class << self
    # Customize default settings for the SDK using block.
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
