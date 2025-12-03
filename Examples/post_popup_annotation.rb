require 'aspose_pdf_cloud'
include AsposePdfCloud

client_secret = 'XXXXX'
client_id = 'XXXXX'
@pdf_api = PdfApi.new(client_secret, client_id)
file_name = 'PdfWithAnnotations.pdf'
# Upload the File
@pdf_api.put_create(file_name, :: File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'
    parent_id = 'GI5TCMR3GE2TQLBSGM3CYMJYGUWDENRV'
    opts = {
        :folder => @temp_folder
    }

    annotation = PopupAnnotation.new
    annotation.name = 'Test popup'
    annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.z_index = 1
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    response = @pdf_api.post_popup_annotation(file_name, parent_id,  annotation, opts)
    puts response