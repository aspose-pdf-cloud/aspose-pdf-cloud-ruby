require 'aspose_pdf_cloud'
include AsposePdfCloud

app_key = 'XXXXX'
app_sid = 'XXXXX'

@pdf_api = PdfApi.new(app_key, app_sid)
file_name = 'PdfWithAnnotations.pdf'

# Upload the File
@pdf_api.put_create(file_name, ::File.open('example_data/' + file_name, 'r') {| io | io.read(io.size) })
puts 'Uploaded the File'

opts = {
    :folder => @temp_folder
}

annotation = PolyLineAnnotation.new
annotation.name = 'Test poly_line'
annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
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
puts response