require 'aspose_pdf_cloud'
include AsposePdfCloud

client_secret = 'XXXXX'
client_id = 'XXXXX'
@pdf_api = PdfApi.new(client_secret, client_id)
file_name = 'PdfWithAnnotations.pdf'
# Upload the File
@pdf_api.put_create(file_name, :: File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'

opts = {
    :folder => @temp_folder
}

annotation = PolygonAnnotation.new
annotation.name = 'Test polygon'
annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
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
annotation_id = annotations_response[0].annotations.list[0].id

response = @pdf_api.put_polygon_annotation(file_name, annotation_id,  annotation, opts)
puts response