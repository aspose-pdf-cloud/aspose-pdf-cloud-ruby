require 'aspose_pdf_cloud'
include AsposePdfCloud

client_secret = 'XXXXX'
client_id = 'XXXXX'
@pdf_api = PdfApi.new(client_secret, client_id)
file_name = 'PdfWithAnnotations.pdf'
# Upload the File
@pdf_api.put_create(file_name, :: File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'
out_file_path = 'outFile.dat'
opts = {
    :folder => @temp_folder
}

annotations_response = @pdf_api.get_document_sound_annotations(file_name, opts)
annotation_id = annotations_response[0].annotations.list[0].id

response = @pdf_api.put_sound_annotation_data_extract(file_name, annotation_id, out_file_path, opts)
puts response