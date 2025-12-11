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
  folder: @temp_folder
}

response = @pdf_api.get_document_circle_annotations(file_name, opts)
puts response