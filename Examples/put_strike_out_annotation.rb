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

annotation = StrikeOutAnnotation.new
annotation.name = 'Test strike_out'
annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
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
annotation_id = annotations_response[0].annotations.list[0].id

response = @pdf_api.put_strike_out_annotation(file_name, annotation_id,  annotation, opts)
puts response