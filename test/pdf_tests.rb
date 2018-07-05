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

require 'minitest/autorun'
require 'minitest/unit'

require_relative '../lib/aspose_pdf_cloud'

class PdfTests < Minitest::Test
  include MiniTest::Assertions
  include AsposePdfCloud


  def setup
    # Get App key and App SID from https://cloud.aspose.com
    @pdf_api = PdfApi.new('app_key', 'app_sid')

    @temp_folder = 'TempPdfCloud'
    @test_data_folder = '../test_data/'

    config = @pdf_api.api_client.config
    config.host = 'api-dev.aspose.cloud'
    config.scheme = 'https'
  end


  def teardown
  end


  def upload_file(file_name)
    response = @pdf_api.put_create(@temp_folder + '/' + file_name, File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) } )
    assert(response, "Failed to upload #{file_name} file.")
  end


  # Annotations Tests

  def test_get_page_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read document page annotations.')
  end


  # Append Tests

  def test_post_append_document_using_query_params
    file_name = 'PdfWithImages2.pdf'
    append_file_name = '4pages.pdf'

    upload_file(file_name)
    upload_file(append_file_name)

    opts = {
      :append_file => @temp_folder + '/' + append_file_name,
      :startPage => 2,
      :endPage => 4,
      :folder => @temp_folder
    }

    response = @pdf_api.post_append_document(file_name, opts)
    assert(response, 'Failed to append document to existing one.')
  end


  def test_post_append_document_using_body_params
    file_name = 'PdfWithImages2.pdf'
    append_file_name = '4pages.pdf'

    upload_file(file_name)
    upload_file(append_file_name)

    append_document = AppendDocument.new
    append_document.document = @temp_folder + '/' + append_file_name
    append_document.start_page = 2
    append_document.end_page = 4

    opts = {
      :append_document => append_document,
      :folder => @temp_folder
    }

    response = @pdf_api.post_append_document(file_name, opts)
    assert(response, 'Failed to append document to existing one.')
  end


  # Attachments Tests

  def test_get_document_attachment_by_index
    file_name = 'PdfWithEmbeddedFiles.pdf'
    upload_file(file_name)

    attachment_index = 1
    opts = {
      :folder => @temp_folder
    }

    response = @pdf_api.get_document_attachment_by_index(file_name, attachment_index, opts)
    assert(response, 'Failed to read document attachment info by its index')
  end


  def test_get_document_attachments
    file_name = 'PdfWithEmbeddedFiles.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_attachments(file_name, opts)
    assert(response, 'Failed to read document attachments info.')
  end


  def test_get_download_document_attachment_by_index
    file_name = 'PdfWithEmbeddedFiles.pdf'
    upload_file(file_name)

    attachment_index = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_download_document_attachment_by_index(file_name, attachment_index, opts)
    assert(response, 'Failed to download document attachment content by its index.')
  end


  # Bookmarks Tests

  def test_get_document_bookmarks
    file_name = 'PdfWithBookmarks.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_bookmarks(file_name, opts)
    assert(response, 'Failed to read document bookmarks.')
  end


  # Document Save As Tiff Tests

  def test_put_document_save_as_tiff_using_query_params
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :result_file => '4pages.tiff',
        :brightness => 0.6,
        :compression => CompressionType::CCITT4,
        :color_depth => ColorDepth::FORMAT1BPP,
        :left_margin => 0,
        :right_margin => 0,
        :top_margin => 0,
        :bottom_margin => 0,
        :orientation => ShapeType::PORTRAIT,
        :skip_blank_pages => true,
        :width => 1200,
        :height => 1600,
        :x_resolution => 200,
        :y_resolution => 200,
        :page_index => 2,
        :page_count=> 2,
        :folder => @temp_folder
    }

    response = @pdf_api.put_document_save_as_tiff(file_name, opts)
    assert(response, 'Failed to save document as Tiff image')
  end


  def test_put_document_save_as_tiff_using_body_params
    file_name = '4pages.pdf'
    upload_file(file_name)

    export_options = TiffExportOptions.new
    export_options.result_file = '4pages.tiff'
    export_options.brightness = 0.6
    export_options.compression = CompressionType::CCITT4
    export_options.color_depth = ColorDepth::FORMAT1BPP
    export_options.left_margin = 0
    export_options.right_margin = 0
    export_options.top_margin = 0
    export_options.bottom_margin = 0
    export_options.orientation = ShapeType::PORTRAIT
    export_options.skip_blank_pages = true
    export_options.width = 1200
    export_options.height = 1600
    export_options.x_resolution = 200
    export_options.y_resolution = 200
    export_options.page_index = 2
    export_options.page_count = 2

    opts = {
        :export_options => export_options,
        :folder => @temp_folder
    }

    response = @pdf_api.put_document_save_as_tiff(file_name, opts)
    assert(response, 'Failed to save document as Tiff image')
  end


  # Document Tests

  def test_get_document
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document(file_name, opts)
    assert(response, 'Failed to read common document info.')
  end


  def test_post_optimize_document
    file_name = '4pages.pdf'
    upload_file(file_name)

    optimize_options = OptimizeOptions.new
    optimize_options.allow_reuse_page_content = false
    optimize_options.compress_images = true
    optimize_options.image_quality = 100
    optimize_options.link_duplcate_streams = true
    optimize_options.remove_unused_objects = true
    optimize_options.remove_unused_streams = true
    optimize_options.unembed_fonts = true

    opts = {
      :options => optimize_options,
      :folder => @temp_folder
    }

    response = @pdf_api.post_optimize_document(file_name, opts)
    assert(response, 'Failed to optimize document.')
  end


  def test_post_split_document
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.post_split_document(file_name, opts)
    assert(response, 'Failed to split document to parts.')
  end


  def test_put_convert_document
    url = 'http://pdf995.com/samples/pdf.pdf'
    format = 'tiff'

    opts = {
        :format => format,
        :url => url
    }

    response = @pdf_api.put_convert_document(opts)
    assert(response, 'Failed to convert document from request content to format specified')
  end


  def test_put_create_empty_document
    file_name = 'empty.pdf'

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_create_document(file_name, opts)
    assert(response, 'Failed to create new document')
  end


  def test_put_create_document
    file_name = 'HtmlExample1.pdf'
    template_name = 'HtmlExample1.html'

    upload_file(template_name)

    opts = {
        :template_file => @temp_folder + '/' + template_name,
        :template_type => 'html',
        :folder => @temp_folder
    }

    response = @pdf_api.put_create_document(file_name, opts)
    assert(response, 'Failed to create document from HTML template.')
  end


  def test_put_create_document_from_images
    image_1 = '33539.jpg'
    upload_file(image_1)

    image_2 = '44781.jpg'
    upload_file(image_2)

    result_doc_name = 'pdffromimagesinquery.pdf'

    images = ImagesListRequest.new
    images.images_list = [ @temp_folder + '/' + image_1,  @temp_folder + '/' + image_2]

    opts = {
        :images => images,
        :ocr => false,
        :folder => @temp_folder
    }

    response = @pdf_api.put_create_document_from_images(result_doc_name, opts)
    assert(response, 'Failed to create document from Images.')
  end

  # Fields Tests

  def test_get_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }
    field_name = 'textField'

    response = @pdf_api.get_field(file_name, field_name, opts)
    assert(response, 'Failed to get document field by name.')
  end


  def test_get_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_fields(file_name, opts)
    assert(response, 'Failed to get document fields.')
  end


  def test_post_create_field
    file_name = 'Hello_world.pdf'
    upload_file(file_name)

    rect = Rectangle.new
    rect.x = 50
    rect.y = 200
    rect.width = 150
    rect.height = 200

    field = Field.new
    field.name = 'checkboxfield'
    field.values = ['1']
    field.type = 'Boolean'
    field.rect = rect

    page_number = 1

    opts = {
        :field => field,
        :folder => @temp_folder
    }

    response = @pdf_api.post_create_field(file_name, page_number, opts)
    assert(response, 'Failed to create field.')
  end


  def test_put_update_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'textField'

    field = Field.new
    field.name = field_name
    field.values = ['Text field updated value.']
    field.type = FieldType::TEXT

    opts = {
        :field => field,
        :folder => @temp_folder
    }

    response = @pdf_api.put_update_field(file_name, field_name, opts)
    assert(response, 'Failed to update fields.')
  end


  def test_delete_field
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'textField'

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_field(file_name, field_name, opts)
    assert(response, 'Failed to delete fields.')
  end


  def test_put_fields_flatten
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_fields_flatten(file_name, opts)
    assert(response, 'Failed to make fields flatten.')
  end


  # Fragments And Segments Tests

  def test_get_fragment
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    fragment_number = 1

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_fragment(file_name, page_number, fragment_number, opts)
    assert(response, 'Failed to read page fragment.')
  end

  def test_get_fragment_text_format
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    fragment_number = 1

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_fragment_text_format(file_name, page_number, fragment_number, opts)
    assert(response, 'Failed to read page fragment text format.')
  end


  def test_get_fragments
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.get_fragments(file_name, page_number, opts)
    assert(response, 'Failed to read page fragments.')
  end


  def test_get_segment
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    fragment_number = 1
    segment_number = 1

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_segment(file_name, page_number, fragment_number, segment_number, opts)
    assert(response, 'Failed to read segment.')
  end


  def test_get_segment_text_format
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    fragment_number = 1
    segment_number = 1

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_segment_text_format(file_name, page_number, fragment_number, segment_number, opts)
    assert(response, 'Failed to read segment text format.')
  end


  def test_get_segments
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    fragment_number = 1

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_segments(file_name, page_number, fragment_number, opts)
    assert(response, 'Failed to read fragment segments.')
  end


  # Images Tests

  def test_get_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    page_number = 1
    image_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_image(file_name, page_number, image_number, opts)
    assert(response, 'Failed to read document image by number.')
  end

  def test_get_image_with_format
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    page_number = 1
    image_number = 1
    opts = {
        :format => 'jpeg',
        :height => 100,
        :width => 100,
        :folder => @temp_folder
    }

    response = @pdf_api.get_image(file_name, page_number, image_number, opts)
    assert(response, 'Failed to read document image by number.')
  end

  def test_get_images
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_images(file_name, page_number, opts)
    assert(response, 'Failed to read document images.')
  end


  def test_post_replace_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    image_file_name = 'Koala.jpg'
    upload_file(image_file_name)

    page_number = 1
    image_number = 1
    opts = {
        :image_file => @temp_folder + '/' + image_file_name,
        :folder => @temp_folder
    }

    response = @pdf_api.post_replace_image(file_name, page_number, image_number, opts)
    assert(response, 'Failed to replace document image.')
  end

  def test_post_replace_image_from_request
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    image_file_name = 'Koala.jpg'
    page_number = 1
    image_number = 1
    opts = {
        :image =>  File.open(@test_data_folder + image_file_name, 'r') { |io| io.read(io.size) },
        :folder => @temp_folder
    }
    response = @pdf_api.post_replace_image(file_name, page_number, image_number, opts)
    assert(response, 'Failed to replace document image.')
  end

  def test_put_images_extract_as_jpeg
    name = "PdfWithImages2.pdf"
    upload_file(name)
    page_number = 1

    dest_folder = "extract_jpg"
    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }
    response = @pdf_api.put_images_extract_as_jpeg(name, page_number, opts)
    assert(response, 'Failed to extract images as jpeg.')
  end

  def test_put_images_extract_as_tiff
    name = "PdfWithImages2.pdf"
    upload_file(name)
    page_number = 1

    dest_folder = "extract_tiff"
    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }
    response = @pdf_api.put_images_extract_as_tiff(name, page_number, opts)
    assert(response, 'Failed to extract images as tiff.')
  end

  def test_put_images_extract_as_gif
    name = "PdfWithImages2.pdf"
    upload_file(name)
    page_number = 1

    dest_folder = "extract_gif"
    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }
    response = @pdf_api.put_images_extract_as_gif(name, page_number, opts)
    assert(response, 'Failed to extract images as gif.')
  end

  def test_put_images_extract_as_png
    name = "PdfWithImages2.pdf"
    upload_file(name)
    page_number = 1

    dest_folder = "extract_png"
    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }
    response = @pdf_api.put_images_extract_as_png(name, page_number, opts)
    assert(response, 'Failed to extract images as png.')
  end

  # Links Tests

  def test_get_page_link_annotation_by_index
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    link_index = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_link_annotation_by_index(file_name, page_number, link_index, opts)
    assert(response, 'Failed to read document page link annotation by its index.')
  end

  def test_get_page_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read document page link annotations.')
  end


  # Merge Tests

  def test_put_merge_documents
    file_name_list = ['4pages.pdf', 'PdfWithImages2.pdf', 'marketing.pdf']
    file_name_list.each { |file_name| upload_file(file_name)}

    result_name = 'MergingResult.pdf'

    file_name_list.collect! {|file_name| @temp_folder + '/' + file_name}

    merge_documents = MergeDocuments.new
    merge_documents.list = file_name_list

    opts = {
        :merge_documents => merge_documents,
        :folder => @temp_folder
    }

    response = @pdf_api.put_merge_documents(result_name, opts)
    assert(response, 'Failed to merge a list of documents')
  end


  # Pages Tests

  def test_delete_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_page(file_name, page_number, opts)
    assert(response, 'Failed to delete document page by its number.')
  end


  def test_get_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 3
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page(file_name, page_number, opts)
    assert(response, 'Failed to get document page by its number.')
  end

  def test_get_page_with_format
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 3
    opts = {
        :format => 'jpeg',
        :width => 100,
        :height => 100,
        :folder => @temp_folder
    }

    response = @pdf_api.get_page(file_name, page_number, opts)
    assert(response, 'Failed to get document page by its number.')
  end

  def test_get_pages
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pages(file_name, opts)
    assert(response, 'Failed to read document pages info.')
  end


  def test_get_words_per_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_words_per_page(file_name, opts)
    assert(response, 'Failed to get number of words per document page.')
  end


  def test_post_move_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }
    page_number = 1
    new_index = 1

    response = @pdf_api.post_move_page(file_name, page_number, new_index, opts)
    assert(response, 'Failed to move page to new position.')
  end


  def test_put_add_new_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_add_new_page(file_name, opts)
    assert(response, 'Failed to add new page to end of the document.')
  end

  def test_put_page_add_stamp
    file_name = '4pages.pdf'
    upload_file(file_name)

    stamp_file_name = 'Penguins.jpg'
    upload_file(stamp_file_name)

    page_number = 1

    stamp = Stamp.new
    stamp.type = StampType::IMAGE
    stamp.file_name = @temp_folder + '/' + stamp_file_name
    stamp.background = true
    stamp.width = 200
    stamp.height = 200
    stamp.x_indent = 100
    stamp.y_indent = 100

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_page_add_stamp(file_name, page_number, stamp, opts)
    assert(response, 'Failed to add page stamp.')
  end


  # Paragraphs Tests

  def test_put_add_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1

    rectangle = Rectangle.new
    rectangle.x = 100
    rectangle.y = 100
    rectangle.width = 200
    rectangle.height = 200

    foreground_color = Color.new
    foreground_color.a = 0x00
    foreground_color.r = 0x00
    foreground_color.g = 0xFF
    foreground_color.b = 0x00

    background_color = Color.new
    background_color.a = 0x00
    background_color.r = 0xFF
    background_color.g = 0x00
    background_color.b = 0x00

    text_state = TextState.new
    text_state.font = 'Arial'
    text_state.font_size = 10
    text_state.foreground_color = foreground_color
    text_state.background_color = background_color
    text_state.font_style = FontStyles::BOLD

    segment = Segment.new
    segment.value = 'segment 1'
    segment.text_state = text_state

    text_line = TextLine.new
    text_line.horizontal_alignment = TextHorizontalAlignment::RIGHT
    text_line.segments = [segment]

    paragraph = Paragraph.new
    paragraph.rectangle = rectangle
    paragraph.left_margin = 10
    paragraph.right_margin = 10
    paragraph.top_margin = 20
    paragraph.bottom_margin = 20
    paragraph.horizontal_alignment = TextHorizontalAlignment::FULL_JUSTIFY
    paragraph.line_spacing = LineSpacing::FONT_SIZE
    paragraph.rotation = 10
    paragraph.subsequent_lines_indent = 20
    paragraph.vertical_alignment = VerticalAlignment::CENTER
    paragraph.wrap_mode = WrapMode::BY_WORDS
    paragraph.lines = [text_line]

    opts = {
        :paragraph => paragraph,
        :folder => @temp_folder
    }

    response = @pdf_api.put_add_text(file_name, page_number, opts)
    assert(response, 'Failed to add text to the page.')
  end


  # Properties Tests

  def test_delete_properties
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts_1 = {
        :property => property_1,
        :folder => @temp_folder
    }

    property_2 = DocumentProperty.new
    property_2.name = 'prop2'
    property_2.value = 'val2'

    opts_2 = {
        :property => property_2,
        :folder => @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, opts_1)
    @pdf_api.put_set_property(file_name, property_2.name, opts_2)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_properties(file_name, opts)
    assert(response, 'Failed to delete document properties.')
  end


  def test_delete_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts_1 = {
        :property => property_1,
        :folder => @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, opts_1)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_property(file_name, property_1.name, opts)
    assert(response, 'Failed to delete document property.')
  end


  def test_get_document_properties
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts_1 = {
        :property => property_1,
        :folder => @temp_folder
    }

    property_2 = DocumentProperty.new
    property_2.name = 'prop2'
    property_2.value = 'val2'

    opts_2 = {
        :property => property_2,
        :folder => @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, opts_1)
    @pdf_api.put_set_property(file_name, property_2.name, opts_2)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_properties(file_name, opts)
    assert(response, 'Failed to read document properties')
  end


  def test_get_document_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts_1 = {
        :property => property_1,
        :folder => @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, opts_1)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_property(file_name, property_1.name, opts)
    assert(response, 'Failed to read document property by name.')
  end


  def test_put_set_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts_1 = {
        :property => property_1,
        :folder => @temp_folder
    }

    response = @pdf_api.put_set_property(file_name, property_1.name, opts_1)
    assert(response, 'Failed to add/update document property.')
  end


  # Sign Tests

  def test_post_sign_document
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    rectangle = Rectangle.new
    rectangle.x = 100
    rectangle.y = 100
    rectangle.width = 400
    rectangle.height = 100

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS_7
    signature.visible = true

    opts = {
        :signature => signature,
        :folder => @temp_folder
    }

    response = @pdf_api.post_sign_document(file_name, opts)
    assert(response, 'Failed to sign document.')
  end

  def test_post_sign_page
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    page_number = 1

    rectangle = Rectangle.new
    rectangle.x = 100
    rectangle.y = 100
    rectangle.width = 400
    rectangle.height = 100

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = 'PKCS7'
    signature.visible = true

    opts = {
        :signature => signature,
        :folder => @temp_folder
    }

    response = @pdf_api.post_sign_page(file_name, page_number, opts)
    assert(response, 'Failed to sign page.')
  end


  def test_get_verify_signature
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    rectangle = Rectangle.new
    rectangle.x = 100
    rectangle.y = 100
    rectangle.width = 400
    rectangle.height = 100

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS_7
    signature.visible = true

    opts = {
        :signature => signature,
        :folder => @temp_folder
    }

    response_sign = @pdf_api.post_sign_document(file_name, opts)
    assert(response_sign, 'Failed to sign document.')

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.get_verify_signature(file_name, signature.form_field_name, opts)
    assert(response, 'Failed to verify signature.')
  end


  # Text Items Tests

  def test_get_page_text_items
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_text_items(file_name, page_number, opts)
    assert(response, 'Failed to read page text items.')
  end


  def test_get_text_items
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_text_items(file_name, opts)
    assert(response, 'Failed to read document text items.')
  end


  # Text Replace Tests

  def test_post_document_replace_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    text_replace_request = TextReplaceRequest.new
    text_replace_request.old_value = 'Page'
    text_replace_request.new_value = 'p_a_g_e'
    text_replace_request.regex = false

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.post_document_replace_text(file_name, text_replace_request, opts)
    assert(response, "Failed to replace document's text.")
  end


  def test_post_document_replace_text_list
    file_name = '4pages.pdf'
    upload_file(file_name)

    text_replace_request_1 = TextReplaceRequest.new
    text_replace_request_1.old_value = 'First'
    text_replace_request_1.new_value = '1'
    text_replace_request_1.regex = false

    text_replace_request_2 = TextReplaceRequest.new
    text_replace_request_2.old_value = 'Page'
    text_replace_request_2.new_value = 'p_a_g_e'
    text_replace_request_2.regex = false

    text_replace_list_request = TextReplaceListRequest.new
    text_replace_list_request.text_replaces = [text_replace_request_1, text_replace_request_2]

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.post_document_replace_text_list(file_name, text_replace_list_request, opts)
    assert(response, "Failed to replace document's text")
  end


  def test_post_page_replace_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1

    text_replace_request = TextReplaceRequest.new
    text_replace_request.old_value = 'Page'
    text_replace_request.new_value = 'p_a_g_e'
    text_replace_request.regex = false

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.post_page_replace_text(file_name, page_number, text_replace_request, opts)
    assert(response, 'Failed to replace text')
  end


  def test_post_page_replace_text_list
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1

    text_replace_request_1 = TextReplaceRequest.new
    text_replace_request_1.old_value = 'First'
    text_replace_request_1.new_value = '1'
    text_replace_request_1.regex = false

    text_replace_request_2 = TextReplaceRequest.new
    text_replace_request_2.old_value = 'Page'
    text_replace_request_2.new_value = 'p_a_g_e'
    text_replace_request_2.regex = false

    text_replace_list_request = TextReplaceListRequest.new
    text_replace_list_request.text_replaces = [text_replace_request_1, text_replace_request_2]

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.post_page_replace_text_list(file_name, page_number, text_replace_list_request, opts)
    assert(response, 'Failed to replace text')
  end


  # OCR Tests

  def test_put_searchable_document
    file_name = 'rusdoc.pdf'
    upload_file(file_name)

    opts = {
        :lang => 'rus,eng',
        :folder => @temp_folder
    }

    response = @pdf_api.put_searchable_document(file_name, opts)
    assert(response, 'Filed to make document searchable')
  end


  def test_put_searchable_document_with_default_lang
    file_name = 'rusdoc.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_searchable_document(file_name, opts)
    assert(response, 'Filed to make document searchable.')
  end


  # Text Tests

  def test_get_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    x = 0
    y = 0
    width = 0
    height = 0
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_text(file_name, x, y, width, height, opts)
    assert(response, 'Filed to get document text.')
  end

  def test_get_page_text_by_two_text_on_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    x = 0
    y = 0
    width = 0
    height = 0
    opts = {
        :format => ['First Page', 'Second Page'],
        # :format => 'First Page',
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_text(file_name, page_number, x, y, width, height, opts)
    assert(response, 'Filed to get document text.')
  end


  # Text Replace Tests

  def test_post_document_text_replace_whole_doc_by_rect
    file_name = '4pages.pdf'
    upload_file(file_name)

    rect = Rectangle.new
    rect.x = 100
    rect.y = 700
    rect.width = 300
    rect.height = 300

    text_replace = TextReplace.new
    text_replace.old_value = 'Page'
    text_replace.new_value = 'p_a_g_e'
    text_replace.rect = rect

    text_replace_list = TextReplaceListRequest.new
    text_replace_list.text_replaces = [text_replace]
    text_replace_list.start_index = 0
    text_replace_list.count_replace = 0


    opts = {
        :folder => @temp_folder
    }

    response  = @pdf_api.post_document_text_replace(file_name, text_replace_list, opts)
    assert(response, 'Filed to replace document text by rect.')
  end


  def test_post_page_text_replace_by_rect
    file_name = '4pages.pdf'
    upload_file(file_name)
    page_number = 1

    rect = Rectangle.new
    rect.x = 100
    rect.y = 700
    rect.width = 300
    rect.height = 300

    text_replace = TextReplace.new
    text_replace.old_value = 'Page'
    text_replace.new_value = 'p_a_g_e'
    text_replace.rect = rect

    text_replace_list = TextReplaceListRequest.new
    text_replace_list.text_replaces = [text_replace]
    text_replace_list.start_index = 0
    text_replace_list.count_replace = 0

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.post_page_text_replace(file_name, page_number, text_replace_list, opts)
    assert(response, 'Filed to replace page text by rect.')
  end

  # Convert Tests

  def test_get_pdf_in_storage_to_doc
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_doc(file_name, opts)
    assert(response, 'Filed to convert PDF to DOC.')
  end

  def test_put_pdf_in_storage_to_doc
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.doc'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_doc(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to DOC.')
  end

  def test_put_pdf_in_request_to_doc
    file_name = '4pages.pdf'

    res_file = 'result.doc'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
        # :file => @test_data_folder + file_name
    }
    response = @pdf_api.put_pdf_in_request_to_tiff(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to DOC.')
  end

  def test_get_pdf_in_storage_to_pdf_a
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_pdf_a(file_name, PdfAType::PDFA1_A, opts)
    assert(response, 'Filed to convert PDF to PDFA.')
  end

  def test_put_pdf_in_storage_to_pdf_a
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.pdf'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_pdf_a(file_name, @temp_folder + '/' + res_file, PdfAType::PDFA1_A, opts)
    assert(response, 'Filed to convert PDF to PDFA.')
  end

  def test_put_pdf_in_request_to_pdf_a
    file_name = '4pages.pdf'

    res_file = 'result.pdf'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_pdf_a(@temp_folder + '/' + res_file, PdfAType::PDFA1_A, opts)
    assert(response, 'Filed to convert PDF to PDFA.')
  end

  def test_get_pdf_in_storage_to_tiff
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_tiff(file_name, opts)
    assert(response, 'Filed to convert PDF to Tiff.')
  end

  def test_put_pdf_in_storage_to_tiff
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.tiff'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_tiff(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Tiff.')
  end

  def test_put_pdf_in_request_to_tiff
    file_name = '4pages.pdf'

    res_file = 'result.pdf'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_tiff(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Tiff.')
  end

  def test_get_pdf_in_storage_to_svg
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_svg(file_name, opts)
    assert(response, 'Filed to convert PDF to SVG.')
  end

  def test_put_pdf_in_storage_to_svg
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.svg'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_svg(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to SVG.')
  end

  def test_put_pdf_in_request_to_svg
    file_name = '4pages.pdf'

    res_file = 'result.svg'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_svg(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to SVG.')
  end

  def test_get_pdf_in_storage_to_xps
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_xps(file_name, opts)
    assert(response, 'Filed to convert PDF to XPS.')
  end

  def test_put_pdf_in_storage_to_xps
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xps'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xps(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to XPS.')
  end

  def test_put_pdf_in_request_to_xps
    file_name = '4pages.pdf'

    res_file = 'result.xps'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xps(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to XPS.')
  end

  def test_get_pdf_in_storage_to_xls
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_xls(file_name, opts)
    assert(response, 'Filed to convert PDF to XLS.')
  end

  def test_put_pdf_in_storage_to_xls
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xls'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xls(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to XLS.')
  end

  def test_put_pdf_in_request_to_xls
    file_name = '4pages.pdf'

    res_file = 'result.xls'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xls(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to XLS.')
  end

  def test_get_pdf_in_storage_to_html
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_html(file_name, opts)
    assert(response, 'Filed to convert PDF to HTML.')
  end

  def test_put_pdf_in_storage_to_html
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.html'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_html(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to HTML.')
  end

  def test_put_pdf_in_request_to_html
    file_name = '4pages.pdf'

    res_file = 'result.html'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_html(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to HTML.')
  end

  def test_get_pdf_in_storage_to_epub
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_epub(file_name, opts)
    assert(response, 'Filed to convert PDF to EPUB.')
  end

  def test_put_pdf_in_storage_to_epub
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.epub'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_epub(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to EPUB.')
  end

  def test_put_pdf_in_request_to_epub
    file_name = '4pages.pdf'

    res_file = 'result.epub'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_epub(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to EPUB.')
  end

  def test_get_pdf_in_storage_to_pptx
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_pptx(file_name, opts)
    assert(response, 'Filed to convert PDF to PPTX.')
  end

  def test_put_pdf_in_storage_to_pptx
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.pptx'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_pptx(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to PPTX.')
  end


  def test_put_pdf_in_request_to_pptx
    file_name = '4pages.pdf'

    res_file = 'result.pptx'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_pptx(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to PPTX.')
  end

  def test_get_pdf_in_storage_to_la_te_x
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_la_te_x(file_name, opts)
    assert(response, 'Filed to convert PDF to LaTex.')
  end

  def test_put_pdf_in_storage_to_la_te_x
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.latex'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_la_te_x(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to LaTeX.')
  end


  def test_put_pdf_in_request_to_la_te_x
    file_name = '4pages.pdf'

    res_file = 'result.latex'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_la_te_x(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to LaTeX.')
  end

  def test_get_pdf_in_storage_to_mobi_xml
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_mobi_xml(file_name, opts)
    assert(response, 'Filed to convert PDF to Moby Xml.')
  end

  def test_put_pdf_in_storage_to_mobi_xml
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.mobi'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_mobi_xml(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Moby Xml.')
  end


  def test_put_pdf_in_request_to_mobi_xml
    file_name = '4pages.pdf'

    res_file = 'result.mobi'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_mobi_xml(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Moby Xml.')
  end

  def test_get_xfa_pdf_in_storage_to_acro_form
    file_name = 'PdfWithXfaForm.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_xfa_pdf_in_storage_to_acro_form(file_name, opts)
    assert(response, 'Filed to convert Xfa PDF to Acro form.')
  end

  def test_put_xfa_pdf_in_storage_to_acro_form
    file_name = 'PdfWithXfaForm.pdf'
    upload_file(file_name)
    res_file = 'result.pdf'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_xfa_pdf_in_storage_to_acro_form(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert Xfa PDF to Acro form.')
  end


  def test_put_xfa_pdf_in_request_to_acro_form
    file_name = 'PdfWithXfaForm.pdf'

    res_file = 'result.pdf'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_xfa_pdf_in_request_to_acro_form(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert Xfa PDF to Acro form.')
  end


  def test_get_pdf_in_storage_to_xml
    file_name = '4pages.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_pdf_in_storage_to_xml(file_name, opts)
    assert(response, 'Filed to convert PDF to Xml.')
  end

  def test_put_pdf_in_storage_to_xml
    file_name = '4pages.pdf'
    upload_file(file_name)
    res_file = 'result.xml'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_xml(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Xml.')
  end


  def test_put_pdf_in_request_to_xml
    file_name = '4pages.pdf'

    res_file = 'result.xml'

    opts = {
        :file => File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xml(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Xml.')
  end

  # Upload & Download Tests

  def test_put_create
    file_name = '4pages.pdf'

    response = @pdf_api.put_create(@temp_folder + '/' + file_name, File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) } )
    assert(response, "Failed to upload #{file_name} file.")
  end

  def test_get_download
    file_name = '4pages.pdf'
    upload_file(file_name)


    response = @pdf_api.get_download(@temp_folder + '/' + file_name)
    assert(response, "Failed to download #{file_name} file.")
  end

  # Privileges Tests

  def test_put_privileges
    file_name = '4pages.pdf'
    upload_file(file_name)

    privileges = DocumentPrivilege.new
    privileges.allow_copy = false
    privileges.allow_print = false

    opts = {
        :privileges => privileges,
        :folder => @temp_folder
    }
    response = @pdf_api.put_privileges(file_name, opts)
    assert(response, 'Failed to set pdf privileges.')
  end

  # Convert to PDF Tests

  def test_get_epub_in_storage_to_pdf
    file_name = '4pages.epub'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_epub_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert epub to pdf.')
  end

  def test_put_epub_in_storage_to_pdf
    file_name = '4pages.epub'
    upload_file(file_name)
    result_name = 'fromEpub.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_epub_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert epub to pdf.')
  end

  def test_get_web_in_storage_to_pdf
    url = 'http://google.com'

    response = @pdf_api.get_web_in_storage_to_pdf(url)
    assert(response, 'Failed to convert web page to pdf.')
  end

  def test_put_web_in_storage_to_pdf
    url = 'http://google.com'
    result_name = 'fromWeb.pdf'

    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_web_in_storage_to_pdf(result_name, url, opts)
    assert(response, 'Failed to convert web page to pdf.')
  end


  def test_get_la_te_x_in_storage_to_pdf
    file_name = 'TexExample.tex'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_la_te_x_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert LaTeX to pdf.')
  end

  def test_put_la_te_x_in_storage_to_pdf
    file_name = 'TexExample.tex'
    upload_file(file_name)
    result_name = 'fromTex.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_la_te_x_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert LaTeX to pdf.')
  end

  def test_get_mht_in_storage_to_pdf
    file_name = 'MhtExample.mht'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_mht_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert mht to pdf.')
  end

  def test_put_mht_in_storage_to_pdf
    file_name = 'MhtExample.mht'
    upload_file(file_name)
    result_name = 'fromMht.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_mht_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert mht to pdf.')
  end


  def test_get_html_in_storage_to_pdf
    file_name = 'HtmlWithImage.zip'
    upload_file(file_name)

    html_file_name = 'HtmlWithImage.html'
    opts = {
        :height => 650,
        :width => 250
    }
    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_html_in_storage_to_pdf(src_path, html_file_name, opts)
    assert(response, 'Failed to convert html to pdf.')
  end

  def test_put_html_in_storage_to_pdf
    file_name = 'HtmlWithImage.zip'
    upload_file(file_name)
    html_file_name = 'HtmlWithImage.html'

    result_name = 'fromMht.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder,
        :height => 650,
        :width => 250
    }
    response = @pdf_api.put_html_in_storage_to_pdf(result_name, src_path, html_file_name, opts)
    assert(response, 'Failed to convert html to pdf.')
  end

  def test_get_xsl_fo_in_storage_to_pdf
    file_name = 'XslfoExample.xslfo'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_xsl_fo_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert xslfo to pdf.')
  end

  def test_put_xsl_fo_in_storage_to_pdf
    file_name = 'XslfoExample.xslfo'
    upload_file(file_name)
    result_name = 'fromXslFo.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_xsl_fo_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert xslfo to pdf.')
  end


  def test_get_xps_in_storage_to_pdf
    file_name = 'Simple.xps'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_xps_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert xps to pdf.')
  end

  def test_put_xps_in_storage_to_pdf
    file_name = 'Simple.xps'
    upload_file(file_name)
    result_name = 'fromXps.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_xps_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert xps to pdf.')
  end


  def test_get_svg_in_storage_to_pdf
    file_name = 'Simple.svg'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_svg_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert svg to pdf.')
  end

  def test_put_svg_in_storage_to_pdf
    file_name = 'Simple.svg'
    upload_file(file_name)
    result_name = 'fromSvg.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_svg_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert svg to pdf.')
  end

  def test_get_pcl_in_storage_to_pdf
    file_name = 'template.pcl'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_pcl_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert pcl to pdf.')
  end

  def test_put_pcl_in_storage_to_pdf
    file_name = 'template.pcl'
    upload_file(file_name)
    result_name = 'fromPcl.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_pcl_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert pcl to pdf.')
  end


  def test_get_xml_in_storage_to_pdf
    file_name = 'template.xml'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_xml_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert xml to pdf.')
  end

  def test_put_xml_in_storage_to_pdf
    file_name = 'template.xml'
    upload_file(file_name)
    result_name = 'fromXml.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_xml_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert xml to pdf.')
  end

  def test_get_ps_in_storage_to_pdf
    file_name = 'Typography.PS'
    upload_file(file_name)

    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_ps_in_storage_to_pdf(src_path)
    assert(response, 'Failed to convert ps to pdf.')
  end

  def test_put_ps_in_storage_to_pdf
    file_name = 'Typography.PS'
    upload_file(file_name)
    result_name = 'fromPs.pdf'

    src_path = @temp_folder + '/' + file_name
    opts = {
        :dst_folder => @temp_folder
    }
    response = @pdf_api.put_ps_in_storage_to_pdf(result_name, src_path, opts)
    assert(response, 'Failed to convert ps to pdf.')
  end

  def test_put_image_in_storage_to_pdf
    data_file_1 = "33539.jpg"
    upload_file(data_file_1)

    data_file_2 = "44781.jpg"
    upload_file(data_file_2)

    result_name = "result.pdf";

    image_template_1 = ImageTemplate.new
    image_template_1.image_path = @temp_folder + '/' + data_file_1
    image_template_1.image_src_type = ImageSrcType::COMMON

    image_template_2 = ImageTemplate.new
    image_template_2.image_path = @temp_folder + '/' + data_file_2
    image_template_2.image_src_type = ImageSrcType::COMMON

    image_templates_request = ImageTemplatesRequest.new
    image_templates_request.is_ocr = true
    image_templates_request.ocr_langs = "eng"
    image_templates_request.images_list = [image_template_1, image_template_2]

    opts = {
        :dst_folder => @temp_folder
    }

    response = @pdf_api.put_image_in_storage_to_pdf(result_name, image_templates_request, opts)
    assert(response, 'Failed to convert images to pdf.')
  end

  # Page Convert To Images Tests

  def test_get_page_convert_to_tiff
    name = "4pages.pdf"
    upload_file(name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_convert_to_tiff(name, page_number, opts)
    assert(response, 'Failed to convert page as tiff.')
  end

  def test_put_page_convert_to_tiff
    name = "4pages.pdf"
    upload_file(name)
    result_file = "page.tiff"
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_page_convert_to_tiff(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as tiff.')
  end

  def test_get_page_convert_to_jpeg
    name = "4pages.pdf"
    upload_file(name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_convert_to_jpeg(name, page_number, opts)
    assert(response, 'Failed to convert page as jpeg.')
  end

  def test_put_page_convert_to_jpeg
    name = "4pages.pdf"
    upload_file(name)
    result_file = "page.jpeg"
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_page_convert_to_jpeg(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as jpeg.')
  end

  def test_get_page_convert_to_png
    name = "4pages.pdf"
    upload_file(name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_convert_to_png(name, page_number, opts)
    assert(response, 'Failed to convert page as png.')
  end

  def test_put_page_convert_to_png
    name = "4pages.pdf"
    upload_file(name)
    result_file = "page.png"
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_page_convert_to_png(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as png.')
  end

  def test_get_page_convert_to_emf
    name = "4pages.pdf"
    upload_file(name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_convert_to_emf(name, page_number, opts)
    assert(response, 'Failed to convert page as emf.')
  end

  def test_put_page_convert_to_emf
    name = "4pages.pdf"
    upload_file(name)
    result_file = "page.emf"
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_page_convert_to_emf(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as emf.')
  end

  def test_get_page_convert_to_bmp
    name = "4pages.pdf"
    upload_file(name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_convert_to_bmp(name, page_number, opts)
    assert(response, 'Failed to convert page as bmp.')
  end

  def test_put_page_convert_to_bmp
    name = "4pages.pdf"
    upload_file(name)
    result_file = "page.bmp"
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_page_convert_to_bmp(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as bmp.')
  end

  def test_get_page_convert_to_gif
    name = "4pages.pdf"
    upload_file(name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_convert_to_gif(name, page_number, opts)
    assert(response, 'Failed to convert page as gif.')
  end

  def test_put_page_convert_to_gif
    name = "4pages.pdf"
    upload_file(name)
    result_file = "page.gif"
    out_path = @temp_folder + '/' + result_file
    page_number = 2
    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_page_convert_to_gif(name, page_number, out_path, opts)
    assert(response, 'Failed to convert page as gif.')
  end
end

