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
  endPage: 2,
  annotationTypes: [AnnotationType::STAMP],
  folder: @temp_folder
}

response = @pdf_api.put_annotations_flatten(file_name, opts)

puts response
