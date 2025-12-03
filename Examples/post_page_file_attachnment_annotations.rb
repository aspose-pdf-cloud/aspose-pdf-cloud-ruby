require 'aspose_pdf_cloud'
include AsposePdfCloud

client_secret = 'XXXXX'
client_id = 'XXXXX'

@pdf_api = PdfApi.new(client_secret, client_id)
file_name = 'PdfWithAnnotations.pdf'

# Upload the File
@pdf_api.put_create(file_name, ::File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'

attachment_file = '4pages.pdf'
@pdf_api.put_create(file_name, ::File.open('example_data/' + attachment_file, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'

page_number = 1

opts = {
  folder: @temp_folder
}

annotation = FileAttachmentAnnotation.new
annotation.name = 'Test FileAttachment Annotation'
annotation.rect = Rectangle.new(LLX: 100, LLY: 100, URX: 200, URY: 200)
annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
annotation.horizontal_alignment = HorizontalAlignment::CENTER
annotation.rich_text = 'Rich Text'
annotation.subject = 'Subj'
annotation.z_index = 1
annotation.title = 'Title'
annotation.modified = '02/02/2018 12:00:00.000 AM'
annotation.file_path = @temp_folder + '/' + attachment_file
annotation.file_name = attachment_file

response = @pdf_api.post_page_file_attachment_annotations(file_name, page_number, [annotation], opts)
puts response