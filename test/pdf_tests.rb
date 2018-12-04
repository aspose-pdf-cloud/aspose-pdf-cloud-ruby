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

require 'minitest/autorun'
require 'minitest/unit'

require_relative '../lib/aspose_pdf_cloud'

class PdfTests < Minitest::Test
  include MiniTest::Assertions
  include AsposePdfCloud


  def setup
    # Get App key and App SID from https://aspose.cloud
    @pdf_api = PdfApi.new('app_key', 'app_sid')

    @temp_folder = 'TempPdfCloud'
    @test_data_folder = '../test_data/'

    config = @pdf_api.api_client.config
    config.host = 'billing.cloud.saltov.dynabic.com'
    config.scheme = 'https'
  end


  def teardown
  end


  def upload_file(file_name)
    response = @pdf_api.put_create(@temp_folder + '/' + file_name, ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) } )
    assert(response, "Failed to upload #{file_name} file.")
  end


  # Annotations Tests

  def test_get_document_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_annotations(file_name, opts)
    assert(response, 'Failed to read document annotations.')
  end

  def test_delete_document_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_document_annotations(file_name, opts)
    assert(response, 'Failed to delete document annotations.')
  end

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

  def test_delete_page_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 2
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_page_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read document page annotations.')
  end

  def test_delete_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)


    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.delete_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to delete annotation.')
  end

  # PolyLine Annotations Tests

  def test_get_document_poly_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_poly_line_annotations(file_name, opts)
    assert(response, 'Failed to read document polyline annotations.')
  end

  def test_post_page_poly_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = PolyLineAnnotation.new
    annotation.name = 'Test poly_line'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.vertices = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]

    response = @pdf_api.post_page_poly_line_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add polyline annotations into page.')
  end

  def test_get_page_poly_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_poly_line_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page polyline annotations.')
  end

  def test_get_poly_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_poly_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polyline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_poly_line_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page polyline annotations.')
  end

  def test_put_poly_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = PolyLineAnnotation.new
    annotation.name = 'Test poly_line'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.vertices = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]

    annotations_response = @pdf_api.get_document_poly_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polyline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_poly_line_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace polyline annotation.')
  end


  # Polygon Annotations Tests

  def test_get_document_polygon_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_polygon_annotations(file_name, opts)
    assert(response, 'Failed to read document polygon annotations.')
  end

  def test_post_page_polygon_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = PolygonAnnotation.new
    annotation.name = 'Test polygon'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.vertices = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]

    response = @pdf_api.post_page_polygon_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add polygon annotations into page.')
  end

  def test_get_page_polygon_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_polygon_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page polygon annotations.')
  end

  def test_get_polygon_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_polygon_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polygon annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_polygon_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page polygon annotations.')
  end

  def test_put_polygon_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = PolygonAnnotation.new
    annotation.name = 'Test polygon'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.vertices = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]

    annotations_response = @pdf_api.get_document_polygon_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document polygon annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_polygon_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace polygon annotation.')
  end

  # Circle Annotations Tests

  def test_get_document_circle_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_circle_annotations(file_name, opts)
    assert(response, 'Failed to read document circle annotations.')
  end

  def test_post_page_circle_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = CircleAnnotation.new
    annotation.name = 'Test circle'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'

    response = @pdf_api.post_page_circle_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add circle annotations into page.')
  end

  def test_get_page_circle_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_circle_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page circle annotations.')
  end

  def test_get_circle_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_circle_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document circle annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_circle_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page circle annotations.')
  end

  def test_put_circle_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = CircleAnnotation.new
    annotation.name = 'Test circle'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1

    annotations_response = @pdf_api.get_document_circle_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document circle annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_circle_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace circle annotation.')
  end


  # Square Annotations Tests

  def test_get_document_square_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_square_annotations(file_name, opts)
    assert(response, 'Failed to read document square annotations.')
  end

  def test_post_page_square_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = SquareAnnotation.new
    annotation.name = 'Test square'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'

    response = @pdf_api.post_page_square_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add square annotations into page.')
  end

  def test_get_page_square_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_square_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page square annotations.')
  end

  def test_get_square_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_square_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document square annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_square_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page square annotations.')
  end

  def test_put_square_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = SquareAnnotation.new
    annotation.name = 'Test square'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1

    annotations_response = @pdf_api.get_document_square_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document square annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_square_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace square annotation.')
  end


  # Line Annotations Tests

  def test_get_document_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_line_annotations(file_name, opts)
    assert(response, 'Failed to read document line annotations.')
  end

  def test_post_page_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = LineAnnotation.new
    annotation.name = 'Test Line'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.starting = Point.new({:X => 10, :Y => 10})
    annotation.ending = Point.new({:X => 100, :Y => 100})

    response = @pdf_api.post_page_line_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add line annotations into page.')
  end

  def test_get_page_line_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_line_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page line annotations.')
  end

  def test_get_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document line annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_line_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page line annotations.')
  end

  def test_put_line_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = LineAnnotation.new
    annotation.name = 'Test Line'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.starting = Point.new({:X => 10, :Y => 10})
    annotation.ending = Point.new({:X => 100, :Y => 100})

    annotations_response = @pdf_api.get_document_line_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document line annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_line_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace line annotation.')
  end


  # Free Text Annotations Tests

  def test_get_document_free_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_free_text_annotations(file_name, opts)
    assert(response, 'Failed to read document free text annotations.')
  end

  def test_post_page_free_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    text_style = TextStyle.new
    text_style.font_size = 12
    text_style.font = 'Arial'
    text_style.foreground_color = Color.new({:A => 0xFF, :R => 0, :G => 0xFF, :B => 0})
    text_style.background_color = Color.new({:A => 0xFF, :R => 0xFF, :G => 0, :B => 0})

    annotation = FreeTextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.text_style = text_style
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.intent = FreeTextIntent::FREE_TEXT_TYPE_WRITER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.justification = Justification::CENTER
    annotation.title = 'Title'

    response = @pdf_api.post_page_free_text_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add free text annotations into page.')
  end

  def test_get_page_free_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_free_text_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page free text annotations.')
  end

  def test_get_free_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_free_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document free text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_free_text_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page free text annotations.')
  end

  def test_put_free_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    text_style = TextStyle.new
    text_style.font_size = 12
    text_style.font = 'Arial'
    text_style.foreground_color = Color.new({:A => 0xFF, :R => 0, :G => 0xFF, :B => 0})
    text_style.background_color = Color.new({:A => 0xFF, :R => 0xFF, :G => 0, :B => 0})

    annotation = FreeTextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.text_style = text_style
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.intent = FreeTextIntent::FREE_TEXT_TYPE_WRITER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.justification = Justification::CENTER
    annotation.title = 'Title'

    annotations_response = @pdf_api.get_document_free_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document free text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_free_text_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace free text annotation.')
  end


  # Text Annotations Tests

  def test_get_document_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_text_annotations(file_name, opts)
    assert(response, 'Failed to read document text annotations.')
  end

  def test_post_page_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = TextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.state = AnnotationState::UNDEFINED

    response = @pdf_api.post_page_text_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add text annotations into page.')
  end

  def test_get_page_text_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_text_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page text annotations.')
  end

  def test_get_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_text_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page text annotations.')
  end

  def test_put_text_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = TextAnnotation.new
    annotation.name = 'Test Free Text'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::DEFAULT]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Text Box Subj'
    annotation.z_index = 1
    annotation.state = AnnotationState::UNDEFINED

    annotations_response = @pdf_api.get_document_text_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document text annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_text_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace text annotation.')
  end

  # Highlight Annotations Tests

  def test_get_document_highlight_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_highlight_annotations(file_name, opts)
    assert(response, 'Failed to read document highlight annotations.')
  end

  def test_post_page_highlight_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = HighlightAnnotation.new
    annotation.name = 'Test highlight'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]

    response = @pdf_api.post_page_highlight_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add highlight annotations into page.')
  end

  def test_get_page_highlight_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_highlight_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page highlight annotations.')
  end

  def test_get_highlight_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_highlight_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document highlight annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_highlight_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page highlight annotations.')
  end

  def test_put_highlight_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = HighlightAnnotation.new
    annotation.name = 'Test highlight'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]

    annotations_response = @pdf_api.get_document_highlight_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document highlight annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_highlight_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace highlight annotation.')
  end

  # Underline Annotations Tests

  def test_get_document_underline_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_underline_annotations(file_name, opts)
    assert(response, 'Failed to read document underline annotations.')
  end

  def test_post_page_underline_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = UnderlineAnnotation.new
    annotation.name = 'Test underline'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_underline_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add underline annotations into page.')
  end

  def test_get_page_underline_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_underline_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page underline annotations.')
  end

  def test_get_underline_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_underline_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document underline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_underline_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page underline annotations.')
  end

  def test_put_underline_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = UnderlineAnnotation.new
    annotation.name = 'Test underline'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_underline_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document underline annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_underline_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace underline annotation.')
  end

  # Squiggly Annotations Tests

  def test_get_document_squiggly_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_squiggly_annotations(file_name, opts)
    assert(response, 'Failed to read document squiggly annotations.')
  end

  def test_post_page_squiggly_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = SquigglyAnnotation.new
    annotation.name = 'Test squiggly'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_squiggly_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add squiggly annotations into page.')
  end

  def test_get_page_squiggly_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_squiggly_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page squiggly annotations.')
  end

  def test_get_squiggly_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_squiggly_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document squiggly annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_squiggly_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page squiggly annotations.')
  end

  def test_put_squiggly_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = SquigglyAnnotation.new
    annotation.name = 'Test squiggly'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_squiggly_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document squiggly annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_squiggly_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace squiggly annotation.')
  end

  # StrikeOut Annotations Tests

  def test_get_document_strike_out_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_strike_out_annotations(file_name, opts)
    assert(response, 'Failed to read document strikeout annotations.')
  end

  def test_post_page_strike_out_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = StrikeOutAnnotation.new
    annotation.name = 'Test strike_out'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_strike_out_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add strikeout annotations into page.')
  end

  def test_get_page_strike_out_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_strike_out_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page strikeout annotations.')
  end

  def test_get_strike_out_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_strike_out_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document strikeout annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_strike_out_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page strikeout annotations.')
  end

  def test_put_strike_out_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = StrikeOutAnnotation.new
    annotation.name = 'Test strike_out'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.quad_points = [
        Point.new({:X => 10, :Y => 10}),
        Point.new({:X => 20, :Y => 10}),
        Point.new({:X => 10, :Y => 20}),
        Point.new({:X => 10, :Y => 10})
    ]
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_strike_out_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document strikeout annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_strike_out_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace strikeout annotation.')
  end

  # Caret Annotations Tests

  def test_get_document_caret_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_caret_annotations(file_name, opts)
    assert(response, 'Failed to read document caret annotations.')
  end

  def test_post_page_caret_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = CaretAnnotation.new
    annotation.name = 'Test caret'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.frame = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_caret_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add caret annotations into page.')
  end

  def test_get_page_caret_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_caret_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page caret annotations.')
  end

  def test_get_caret_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_caret_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document caret annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_caret_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page caret annotations.')
  end

  def test_put_caret_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = CaretAnnotation.new
    annotation.name = 'Test caret'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.frame = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_caret_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document caret annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_caret_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace caret annotation.')
  end

  # Ink Annotations Tests

  def test_get_document_ink_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_ink_annotations(file_name, opts)
    assert(response, 'Failed to read document ink annotations.')
  end

  def test_post_page_ink_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = InkAnnotation.new
    annotation.name = 'Test ink'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.title = 'Title'
    annotation.ink_list = [
        [
            Point.new({:X => 10, :Y => 40}),
            Point.new({:X => 30, :Y => 40})
        ],
        [
            Point.new({:X => 10, :Y => 20}),
            Point.new({:X => 20, :Y => 20}),
            Point.new({:X => 30, :Y => 20})
        ]
    ]
    annotation.cap_style = CapStyle::ROUNDED
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_page_ink_annotations(file_name, 1,  [annotation], opts)
    assert(response, 'Failed to add ink annotations into page.')
  end

  def test_get_page_ink_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_ink_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page ink annotations.')
  end

  def test_get_ink_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_ink_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document ink annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_ink_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page ink annotations.')
  end

  def test_put_ink_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = InkAnnotation.new
    annotation.name = 'Test ink'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.ink_list = [
        [
            Point.new({:X => 10, :Y => 40}),
            Point.new({:X => 30, :Y => 40})
        ],
        [
            Point.new({:X => 10, :Y => 20}),
            Point.new({:X => 20, :Y => 20}),
            Point.new({:X => 30, :Y => 20})
        ]
    ]
    annotation.cap_style = CapStyle::ROUNDED
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_ink_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document ink annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_ink_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace ink annotation.')
  end

  # Popup Annotations Tests

  def test_get_document_popup_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_popup_annotations(file_name, opts)
    assert(response, 'Failed to read document popup annotations.')
  end

  def test_get_document_popup_annotations_by_parent
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    parent_id = 'GI5TAOZRGU3CYNZSGEWDCNZWFQ3TGOI'
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_document_popup_annotations_by_parent(file_name, parent_id, opts)
    assert(response, 'Failed to read document popup annotations.')
  end

  def test_post_popup_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    parent_id = 'GI5TCMR3GE2TQLBSGM3CYMJYGUWDENRV'
    opts = {
        :folder => @temp_folder
    }

    annotation = PopupAnnotation.new
    annotation.name = 'Test popup'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_popup_annotation(file_name, parent_id,  annotation, opts)
    assert(response, 'Failed to add popup annotations into page.')
  end

  def test_get_page_popup_annotations
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_popup_annotations(file_name, page_number, opts)
    assert(response, 'Failed to read page popup annotations.')
  end

  def test_get_popup_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_document_popup_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document popup annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.get_popup_annotation(file_name, annotation_id, opts)
    assert(response, 'Failed to read page popup annotations.')
  end

  def test_put_popup_annotation
    file_name = 'PdfWithAnnotations.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    annotation = PopupAnnotation.new
    annotation.name = 'Test popup'
    annotation.rect = RectanglePdf.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_popup_annotations(file_name, opts)
    assert(annotations_response, 'Failed to read document popup annotations.')
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_popup_annotation(file_name, annotation_id,  annotation, opts)
    assert(response, 'Failed to replace popup annotation.')
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
    res_file = 'result.zip'

    opts = {
        :folder => @temp_folder
    }
    response = @pdf_api.put_pdf_in_storage_to_html(file_name, @temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to HTML.')
  end

  def test_put_pdf_in_request_to_html
    file_name = '4pages.pdf'

    res_file = 'result.zip'

    opts = {
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
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
        :file => ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) }
    }
    response = @pdf_api.put_pdf_in_request_to_xml(@temp_folder + '/' + res_file, opts)
    assert(response, 'Filed to convert PDF to Xml.')
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
        :width => 250,
        :html_file_name => html_file_name
    }
    src_path = @temp_folder + '/' + file_name
    response = @pdf_api.get_html_in_storage_to_pdf(src_path, opts)
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
        :width => 250,
        :html_file_name => html_file_name
    }
    response = @pdf_api.put_html_in_storage_to_pdf(result_name, src_path, opts)
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

  def test_put_create_empty_document
    file_name = 'empty.pdf'

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_create_document(file_name, opts)
    assert(response, 'Failed to create new document')
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

    rect = RectanglePdf.new
    rect.llx = 50
    rect.lly = 200
    rect.urx = 200
    rect.ury = 400

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

  def test_put_update_fields
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    field_name = 'textField'



    field = Field.new
    field.name = field_name
    field.values = ['Text field updated value.']
    field.type = FieldType::TEXT

    fields = Fields.new
    fields.list = [field]

    opts = {
        :fields => fields,
        :folder => @temp_folder
    }

    response = @pdf_api.put_update_fields(file_name, opts)
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


  # Images Tests

  def test_get_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(file_name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id



    response = @pdf_api.get_image(file_name, image_id, opts)
    assert(response, 'Failed to read document image by image id.')
  end

  def test_delete_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    opts = {
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(file_name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.delete_image(file_name, image_id, opts)
    assert(response, 'Failed to delete document image.')
  end

  def test_get_images
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_images(file_name, page_number, opts)
    assert(response, 'Failed to read page images.')
  end

  def test_put_replace_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    image_file_name = 'Koala.jpg'
    upload_file(image_file_name)

    opts = {
        :image_file_path => @temp_folder + '/' + image_file_name,
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(file_name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_replace_image(file_name, image_id, opts)
    assert(response, 'Failed to replace document image.')
  end

  def test_post_insert_image
    file_name = 'PdfWithImages2.pdf'
    upload_file(file_name)

    image_file_name = 'Koala.jpg'
    upload_file(image_file_name)
    page_number = 1
    llx = 10
    lly = 10
    urx = 100
    ury = 100

    opts = {
        :image_file_path => @temp_folder + '/' + image_file_name,
        :folder => @temp_folder
    }

    response = @pdf_api.post_insert_image(file_name, page_number, llx, lly, urx, ury, opts)
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

  def test_put_image_extract_as_jpeg
    name = "PdfWithImages2.pdf"
    upload_file(name)

    dest_folder = "extract_jpg"

    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_jpeg(name, image_id, opts)
    assert(response, 'Failed to extract image as jpeg.')
  end

  def test_get_image_extract_as_jpeg
    name = "PdfWithImages2.pdf"
    upload_file(name)

    opts = {
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_jpeg(name, image_id, opts)
    assert(response, 'Failed to extract image as jpeg.')
  end

  def test_put_image_extract_as_tiff
    name = "PdfWithImages2.pdf"
    upload_file(name)

    dest_folder = "extract_tiff"

    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_tiff(name, image_id, opts)
    assert(response, 'Failed to extract image as tiff.')
  end

  def test_get_image_extract_as_tiff
    name = "PdfWithImages2.pdf"
    upload_file(name)

    opts = {
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_tiff(name, image_id, opts)
    assert(response, 'Failed to extract image as tiff.')
  end

  def test_put_image_extract_as_gif
    name = "PdfWithImages2.pdf"
    upload_file(name)

    dest_folder = "extract_gif"

    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_gif(name, image_id, opts)
    assert(response, 'Failed to extract image as gif.')
  end

  def test_get_image_extract_as_gif
    name = "PdfWithImages2.pdf"
    upload_file(name)

    opts = {
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_gif(name, image_id, opts)
    assert(response, 'Failed to extract image as gif.')
  end

  def test_put_image_extract_as_png
    name = "PdfWithImages2.pdf"
    upload_file(name)

    dest_folder = "extract_png"

    opts = {
        :dest_folder => @temp_folder + '/' + dest_folder,
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.put_image_extract_as_png(name, image_id, opts)
    assert(response, 'Failed to extract images as png.')
  end

  def test_get_image_extract_as_png
    name = "PdfWithImages2.pdf"
    upload_file(name)

    opts = {
        :folder => @temp_folder
    }

    page_number = 1
    responseImages = @pdf_api.get_images(name, page_number, opts)
    assert(responseImages, 'Failed to read document images.')
    image_id = responseImages[0].images.list[0].id

    response = @pdf_api.get_image_extract_as_png(name, image_id, opts)
    assert(response, 'Failed to extract images as png.')
  end


  # Link Annotations Tests

  def test_get_page_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    response = @pdf_api.get_page_link_annotation(file_name, page_number, link_id, opts)
    assert(response, 'Failed to read document page link annotation.')
  end

  def test_delete_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    response = @pdf_api.delete_link_annotation(file_name, link_id, opts)
    assert(response, 'Failed to delete link annotation.')
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

  def test_post_page_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    rect = RectanglePdf.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 500
    rect.ury = 500

    linkAnnotation = LinkAnnotation.new
    linkAnnotation.action_type = LinkActionType::GO_TO_URI_ACTION
    linkAnnotation.action = "https://products.aspose.cloud/pdf"
    linkAnnotation.rect = rect

    response = @pdf_api.post_page_link_annotations(file_name, page_number, [linkAnnotation], opts)
    assert(response, 'Failed to add link annotation.')
  end

  def test_put_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    rect = RectanglePdf.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 500
    rect.ury = 500

    linkAnnotation = LinkAnnotation.new
    linkAnnotation.action_type = LinkActionType::GO_TO_URI_ACTION
    linkAnnotation.action = "https://products.aspose.cloud/pdf"
    linkAnnotation.rect = rect

    response = @pdf_api.put_link_annotation(file_name, link_id, linkAnnotation, opts)
    assert(response, 'Failed to update link annotation.')
  end

  def test_delete_page_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_page_link_annotations(file_name, page_number, opts)
    assert(response, 'Failed to delete page link annotations.')
  end

  def test_delete_document_link_annotations
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.delete_document_link_annotations(file_name, opts)
    assert(response, 'Failed to delete document link annotations.')
  end

  def test_get_link_annotation
    file_name = 'PdfWithLinks.pdf'
    upload_file(file_name)

    page_number = 1
    opts = {
        :folder => @temp_folder
    }

    annotations_response = @pdf_api.get_page_link_annotations(file_name, page_number, opts)
    assert(annotations_response, 'Failed to read document page link annotations.')
    link_id = annotations_response[0].links.list[0].id

    response = @pdf_api.get_link_annotation(file_name, link_id, opts)
    assert(response, 'Failed to delete link annotation.')
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


# Properties Tests

  def test_delete_properties
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
        :folder => @temp_folder
    }

    property_2 = DocumentProperty.new
    property_2.name = 'prop2'
    property_2.value = 'val2'


    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)
    @pdf_api.put_set_property(file_name, property_2.name, property_2.value, opts)

    response = @pdf_api.delete_properties(file_name, opts)
    assert(response, 'Failed to delete document properties.')
  end


  def test_delete_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
        :folder => @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)

    response = @pdf_api.delete_property(file_name, property_1.name, opts)
    assert(response, 'Failed to delete document property.')
  end


  def test_get_document_properties
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
        :folder => @temp_folder
    }

    property_2 = DocumentProperty.new
    property_2.name = 'prop2'
    property_2.value = 'val2'

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)
    @pdf_api.put_set_property(file_name, property_2.name, property_2.value, opts)

    response = @pdf_api.get_document_properties(file_name, opts)
    assert(response, 'Failed to read document properties')
  end


  def test_get_document_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_1 = DocumentProperty.new
    property_1.name = 'prop1'
    property_1.value = 'val1'

    opts = {
        :folder => @temp_folder
    }

    @pdf_api.put_set_property(file_name, property_1.name, property_1.value, opts)

    response = @pdf_api.get_document_property(file_name, property_1.name, opts)
    assert(response, 'Failed to read document property by name.')
  end


  def test_put_set_property
    file_name = 'PdfWithAcroForm.pdf'
    upload_file(file_name)

    property_name = 'prop1'
    property_value = 'val1'

    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.put_set_property(file_name, property_name, property_value, opts)
    assert(response, 'Failed to add/update document property.')
  end


  # Sign Tests

  def test_post_sign_document
    file_name = 'BlankWithSignature.pdf'
    upload_file(file_name)

    signature_file_name = 'test1234.pfx'
    upload_file(signature_file_name)

    rectangle = RectanglePdf.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 400
    rectangle.ury = 200

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS7
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

    rectangle = RectanglePdf.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 400
    rectangle.ury = 200

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

    rectangle = RectanglePdf.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 400
    rectangle.ury = 200

    signature = Signature.new
    signature.authority = 'Sergey Smal'
    signature.contact = 'test@mail.ru'
    signature.date = '08/01/2012 12:15:00.000 PM'
    signature.form_field_name = 'Signature1'
    signature.location = 'Ukraine'
    signature.password = 'test1234'
    signature.rectangle = rectangle
    signature.signature_path = @temp_folder + '/' + signature_file_name
    signature.signature_type = SignatureType::PKCS7
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


  # Text Replace Tests

  def test_post_document_text_replace
    file_name = 'marketing.pdf'
    upload_file(file_name)

    rect = RectanglePdf.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 300
    rect.ury = 300

    text_replace = TextReplace.new
    text_replace.old_value = 'market'
    text_replace.new_value = 'm_a_r_k_e_t'
    text_replace.regex = false
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
    file_name = 'marketing.pdf'
    upload_file(file_name)
    page_number = 1

    rect = RectanglePdf.new
    rect.llx = 100
    rect.lly = 100
    rect.urx = 300
    rect.ury = 300

    text_replace = TextReplace.new
    text_replace.old_value = 'market'
    text_replace.new_value = 'm_a_r_k_e_t'
    text_replace.regex = false
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


  # Text Tests

  def test_get_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    llx = 0
    lly = 0
    urx = 0
    ury = 0
    opts = {
        :folder => @temp_folder
    }

    response = @pdf_api.get_text(file_name, llx, lly, urx, ury, opts)
    assert(response, 'Filed to get document text.')
  end

  def test_get_page_text_by_two_text_on_page
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1
    llx = 0
    lly = 0
    urx = 0
    ury = 0
    opts = {
        :format => ['First Page', 'Second Page'],
        # :format => 'First Page',
        :folder => @temp_folder
    }

    response = @pdf_api.get_page_text(file_name, page_number, llx, lly, urx, ury, opts)
    assert(response, 'Filed to get document text.')
  end

  def test_put_add_text
    file_name = '4pages.pdf'
    upload_file(file_name)

    page_number = 1

    rectangle = RectanglePdf.new
    rectangle.llx = 100
    rectangle.lly = 100
    rectangle.urx = 200
    rectangle.ury = 200

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


  # Storage Tests

  def test_put_create
    file_name = '4pages.pdf'

    response = @pdf_api.put_create(@temp_folder + '/' + file_name, ::File.open(@test_data_folder + file_name, 'r') { |io| io.read(io.size) } )
    assert(response, "Failed to upload #{file_name} file.")
  end

  def test_get_download
    file_name = '4pages.pdf'
    upload_file(file_name)


    response = @pdf_api.get_download(@temp_folder + '/' + file_name)
    assert(response, "Failed to download #{file_name} file.")
  end

  def test_get_list_files

    opts = {
        :path => @temp_folder
    }

    response = @pdf_api.get_list_files(opts)
    assert(response, 'Failed get file list.')
  end
end
