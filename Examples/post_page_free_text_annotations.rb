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

text_style = TextStyle.new
text_style.font_size = 12
text_style.font = 'Arial'
text_style.foreground_color = Color.new({:A => 0xFF, :R => 0, :G => 0xFF, :B => 0})
text_style.background_color = Color.new({:A => 0xFF, :R => 0xFF, :G => 0, :B => 0})

annotation = FreeTextAnnotation.new
annotation.name = 'Test Free Text'
annotation.text_style = text_style
annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
annotation.flags = [AnnotationFlags::DEFAULT]
annotation.horizontal_alignment = HorizontalAlignment::CENTER
annotation.intent = FreeTextIntent::FREE_TEXT_TYPE_WRITER
annotation.rich_text = 'Rich Text'
annotation.subject = 'Text Box Subj'
annotation.z_index = 1
annotation.justification = Justification::CENTER
annotation.title = 'Title'

response = @pdf_api.post_page_free_text_annotations(file_name, 1,  [annotation], opts)
puts response