require 'aspose_pdf_cloud'
include AsposePdfCloud

app_key = 'XXXXX'
app_sid = 'XXXXX'
@pdf_api = PdfApi.new(app_key, app_sid)
file_name = 'PdfWithAnnotations.pdf'
# Upload the File
@pdf_api.put_create(file_name, :: File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'
attachment_file = '4pages.pdf'
@pdf_api.put_create(file_name, :: File.open('example_data/' + attachment_file, 'r') { |io| io.read(io.size) })
puts 'Uploaded the Attachment File'

opts = {
    :folder => @temp_folder
}

annotation = StampAnnotation.new
annotation.name = 'Test Stamp Annotation Updated'
annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
annotation.horizontal_alignment = HorizontalAlignment::CENTER
annotation.z_index = 1
annotation.rich_text = 'Rich text'
annotation.subject = 'Subj'
annotation.title = 'Title'
annotation.modified = '03/04/2018 12:00:00.000 AM'
annotation.file_path = @temp_folder + '/' + attachment_file

annotations_response = @pdf_api.get_document_stamp_annotations(file_name, opts)
annotation_id = annotations_response[0].annotations.list[0].id

response = @pdf_api.put_stamp_annotation(file_name, annotation_id,  annotation, opts)
puts response