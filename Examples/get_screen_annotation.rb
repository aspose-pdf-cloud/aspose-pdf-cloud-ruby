require 'aspose_pdf_cloud'
include AsposePdfCloud

app_key = 'XXXXX'
app_sid = 'XXXXX'
@pdf_api = PdfApi.new(app_key, app_sid)
file_name = 'PdfWithScreenAnnotations.pdf'
# Upload the File
@pdf_api.put_create(file_name, :: File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'

opts = {
  folder: @temp_folder
}

annotations_response = @pdf_api.get_document_screen_annotations(file_name, opts)
assert(annotations_response, 'Failed to read document screen annotations.')
annotation_id = annotations_response[0].annotations.list[0].id

response = @pdf_api.get_screen_annotation(file_name, annotation_id, opts)

puts response