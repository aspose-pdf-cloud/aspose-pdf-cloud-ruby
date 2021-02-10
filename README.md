![](https://img.shields.io/badge/api-v3.0-lightgrey) ![Gem](https://img.shields.io/gem/v/aspose_pdf_cloud) ![Gem](https://img.shields.io/gem/dt/aspose_pdf_cloud) [![GitHub license](https://img.shields.io/github/license/aspose-pdf-cloud/aspose-pdf-cloud-ruby)](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby/blob/master/LICENSE)
# Ruby REST API to Process PDF in Cloud
[Aspose.PDF Cloud](https://products.aspose.cloud/pdf) is a true REST API that enables you to perform a wide range of document processing operations including creation, manipulation, conversion and rendering of PDF documents in the cloud.

Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process documents in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. This repository contains new generation SDKs for Aspose.PDF Cloud and examples.

These SDKs are now fully supported. If you have any questions, see any bugs or have enhancement request, feel free to reach out to us at [Free Support Forums](https://forum.aspose.cloud/c/pdf).

Extract Text & Images of a PDF document online https://products.aspose.app/pdf/parser.

## PDF Processing Features

- Add PDF document's header & footer in text or image format.
- Add tables & stamps (text or image) to PDF documents.
- Append multiple PDF documents to an existing file.
- Work with PDF attachments, annotations, & form fields.
- Apply encryption or decryption to PDF documents & set a password.
- Delete all stamps & tables from a page or entire PDF document.
- Delete a specific stamp or table from the PDF document by its ID.
- Replace single or multiple instances of text on a PDF page or from the entire document.
- Extensive support for converting PDF documents to various other file formats.
- Extract various elements of PDF files & make PDF documents optimized.

## Read & Write PDF Formats

PDF, EPUB, HTML, TeX, SVG, XML, XPS, FDF, XFDF
## Save PDF As
XLS, XLSX, PPTX, DOC, DOCX, MobiXML, JPEG, EMF, PNG, BMP, GIF, TIFF, Text
## Read PDF Formats
MHT, PCL, PS, XSLFO, MD

## Enhancements in Version 20.12
- A new version of Aspose.PDF Cloud was prepared using the latest version of Aspose.PDF for .Net.

## Enhancements in Version 20.10
- A new version of Aspose.PDF Cloud was prepared using the latest version of Aspose.PDF for .Net.

## Enhancements in Version 20.9
* Implemented custom fonts for Text API.
* Added custom fonts for Table API.
* Added support for custom fonts for Stamps API.
* Support for custom fonts for Header/Footer API.
* Included custom fonts for Replace Text API.

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build aspose_pdf_cloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./aspose_pdf_cloud-20.12.0.gem
```
(for development, run `gem install --dev ./aspose_pdf_cloud-20.12.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose_pdf_cloud', '~> 20.12.0'

### Install from Git

The Ruby gem is hosted at a git repository: https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby .
Add the following in the Gemfile:

    gem 'aspose_pdf_cloud', :git => 'https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby.git'



## Get PDF Page Annotations in Ruby

```ruby
    # Get your ClientId and ClientSecret from https://dashboard.aspose.cloud (free registration required).

    AsposePdfCloud.configure do |config|
            config.client_data['ClientId'] = 'MY_CLIENT_ID'
            config.client_data['ClientSecret'] = 'MY_CLIENT_SECRET'
            config.host = host
    
	file_name = 'PdfWithAnnotations.pdf'
	page_number = 2
	opts = {
	  :folder => 'tempFolder'
	}

	response = @pdf_api.get_page_annotations(file_name, page_number, opts)
```

## Unit Tests
Aspose PDF SDK includes a suite of unit tests within the "test" subdirectory. These Unit Tests also serves as examples of how to use the Aspose PDF SDK.

## Licensing
All Aspose.PDF Cloud SDKs are licensed under [MIT License](LICENSE).

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposePdfCloud::PdfApi* | [**copy_file**](docs/PdfApi.md#copy_file) | **PUT** /pdf/storage/file/copy/\{srcPath} | Copy file
*AsposePdfCloud::PdfApi* | [**copy_folder**](docs/PdfApi.md#copy_folder) | **PUT** /pdf/storage/folder/copy/\{srcPath} | Copy folder
*AsposePdfCloud::PdfApi* | [**create_folder**](docs/PdfApi.md#create_folder) | **PUT** /pdf/storage/folder/\{path} | Create the folder
*AsposePdfCloud::PdfApi* | [**delete_annotation**](docs/PdfApi.md#delete_annotation) | **DELETE** /pdf/\{name}/annotations/\{annotationId} | Delete document annotation by ID
*AsposePdfCloud::PdfApi* | [**delete_bookmark**](docs/PdfApi.md#delete_bookmark) | **DELETE** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Delete document bookmark by ID.
*AsposePdfCloud::PdfApi* | [**delete_document_annotations**](docs/PdfApi.md#delete_document_annotations) | **DELETE** /pdf/\{name}/annotations | Delete all annotations from the document
*AsposePdfCloud::PdfApi* | [**delete_document_bookmarks**](docs/PdfApi.md#delete_document_bookmarks) | **DELETE** /pdf/\{name}/bookmarks/tree | Delete all document bookmarks.
*AsposePdfCloud::PdfApi* | [**delete_document_link_annotations**](docs/PdfApi.md#delete_document_link_annotations) | **DELETE** /pdf/\{name}/links | Delete all link annotations from the document
*AsposePdfCloud::PdfApi* | [**delete_document_stamps**](docs/PdfApi.md#delete_document_stamps) | **DELETE** /pdf/\{name}/stamps | Delete all stamps from the document
*AsposePdfCloud::PdfApi* | [**delete_document_tables**](docs/PdfApi.md#delete_document_tables) | **DELETE** /pdf/\{name}/tables | Delete all tables from the document
*AsposePdfCloud::PdfApi* | [**delete_field**](docs/PdfApi.md#delete_field) | **DELETE** /pdf/\{name}/fields/\{fieldName} | Delete document field by name.
*AsposePdfCloud::PdfApi* | [**delete_file**](docs/PdfApi.md#delete_file) | **DELETE** /pdf/storage/file/\{path} | Delete file
*AsposePdfCloud::PdfApi* | [**delete_folder**](docs/PdfApi.md#delete_folder) | **DELETE** /pdf/storage/folder/\{path} | Delete folder
*AsposePdfCloud::PdfApi* | [**delete_image**](docs/PdfApi.md#delete_image) | **DELETE** /pdf/\{name}/images/\{imageId} | Delete image from document page.
*AsposePdfCloud::PdfApi* | [**delete_link_annotation**](docs/PdfApi.md#delete_link_annotation) | **DELETE** /pdf/\{name}/links/\{linkId} | Delete document page link annotation by ID
*AsposePdfCloud::PdfApi* | [**delete_page**](docs/PdfApi.md#delete_page) | **DELETE** /pdf/\{name}/pages/\{pageNumber} | Delete document page by its number.
*AsposePdfCloud::PdfApi* | [**delete_page_annotations**](docs/PdfApi.md#delete_page_annotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/annotations | Delete all annotations from the page
*AsposePdfCloud::PdfApi* | [**delete_page_link_annotations**](docs/PdfApi.md#delete_page_link_annotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/links | Delete all link annotations from the page
*AsposePdfCloud::PdfApi* | [**delete_page_stamps**](docs/PdfApi.md#delete_page_stamps) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/stamps | Delete all stamps from the page
*AsposePdfCloud::PdfApi* | [**delete_page_tables**](docs/PdfApi.md#delete_page_tables) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/tables | Delete all tables from the page
*AsposePdfCloud::PdfApi* | [**delete_properties**](docs/PdfApi.md#delete_properties) | **DELETE** /pdf/\{name}/documentproperties | Delete custom document properties.
*AsposePdfCloud::PdfApi* | [**delete_property**](docs/PdfApi.md#delete_property) | **DELETE** /pdf/\{name}/documentproperties/\{propertyName} | Delete document property.
*AsposePdfCloud::PdfApi* | [**delete_stamp**](docs/PdfApi.md#delete_stamp) | **DELETE** /pdf/\{name}/stamps/\{stampId} | Delete document stamp by ID
*AsposePdfCloud::PdfApi* | [**delete_table**](docs/PdfApi.md#delete_table) | **DELETE** /pdf/\{name}/tables/\{tableId} | Delete document table by ID
*AsposePdfCloud::PdfApi* | [**download_file**](docs/PdfApi.md#download_file) | **GET** /pdf/storage/file/\{path} | Download file
*AsposePdfCloud::PdfApi* | [**get_api_info**](docs/PdfApi.md#get_api_info) | **GET** /pdf/info |
*AsposePdfCloud::PdfApi* | [**get_bookmark**](docs/PdfApi.md#get_bookmark) | **GET** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Read document bookmark.
*AsposePdfCloud::PdfApi* | [**get_bookmarks**](docs/PdfApi.md#get_bookmarks) | **GET** /pdf/\{name}/bookmarks/list/\{bookmarkPath} | Read document bookmarks node list.
*AsposePdfCloud::PdfApi* | [**get_caret_annotation**](docs/PdfApi.md#get_caret_annotation) | **GET** /pdf/\{name}/annotations/caret/\{annotationId} | Read document page caret annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_check_box_field**](docs/PdfApi.md#get_check_box_field) | **GET** /pdf/\{name}/fields/checkbox/\{fieldName} | Read document checkbox field by name.
*AsposePdfCloud::PdfApi* | [**get_circle_annotation**](docs/PdfApi.md#get_circle_annotation) | **GET** /pdf/\{name}/annotations/circle/\{annotationId} | Read document page circle annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_combo_box_field**](docs/PdfApi.md#get_combo_box_field) | **GET** /pdf/\{name}/fields/combobox/\{fieldName} | Read document combobox field by name.
*AsposePdfCloud::PdfApi* | [**get_disc_usage**](docs/PdfApi.md#get_disc_usage) | **GET** /pdf/storage/disc | Get disc usage
*AsposePdfCloud::PdfApi* | [**get_document**](docs/PdfApi.md#get_document) | **GET** /pdf/\{name} | Read common document info.
*AsposePdfCloud::PdfApi* | [**get_document_annotations**](docs/PdfApi.md#get_document_annotations) | **GET** /pdf/\{name}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*AsposePdfCloud::PdfApi* | [**get_document_attachment_by_index**](docs/PdfApi.md#get_document_attachment_by_index) | **GET** /pdf/\{name}/attachments/\{attachmentIndex} | Read document attachment info by its index.
*AsposePdfCloud::PdfApi* | [**get_document_attachments**](docs/PdfApi.md#get_document_attachments) | **GET** /pdf/\{name}/attachments | Read document attachments info.
*AsposePdfCloud::PdfApi* | [**get_document_bookmarks**](docs/PdfApi.md#get_document_bookmarks) | **GET** /pdf/\{name}/bookmarks/tree | Read document bookmarks tree.
*AsposePdfCloud::PdfApi* | [**get_document_caret_annotations**](docs/PdfApi.md#get_document_caret_annotations) | **GET** /pdf/\{name}/annotations/caret | Read document caret annotations.
*AsposePdfCloud::PdfApi* | [**get_document_check_box_fields**](docs/PdfApi.md#get_document_check_box_fields) | **GET** /pdf/\{name}/fields/checkbox | Read document checkbox fields.
*AsposePdfCloud::PdfApi* | [**get_document_circle_annotations**](docs/PdfApi.md#get_document_circle_annotations) | **GET** /pdf/\{name}/annotations/circle | Read document circle annotations.
*AsposePdfCloud::PdfApi* | [**get_document_combo_box_fields**](docs/PdfApi.md#get_document_combo_box_fields) | **GET** /pdf/\{name}/fields/combobox | Read document combobox fields.
*AsposePdfCloud::PdfApi* | [**get_document_display_properties**](docs/PdfApi.md#get_document_display_properties) | **GET** /pdf/\{name}/displayproperties | Read document display properties.
*AsposePdfCloud::PdfApi* | [**get_document_file_attachment_annotations**](docs/PdfApi.md#get_document_file_attachment_annotations) | **GET** /pdf/\{name}/annotations/fileattachment | Read document FileAttachment annotations.
*AsposePdfCloud::PdfApi* | [**get_document_free_text_annotations**](docs/PdfApi.md#get_document_free_text_annotations) | **GET** /pdf/\{name}/annotations/freetext | Read document free text annotations.
*AsposePdfCloud::PdfApi* | [**get_document_highlight_annotations**](docs/PdfApi.md#get_document_highlight_annotations) | **GET** /pdf/\{name}/annotations/highlight | Read document highlight annotations.
*AsposePdfCloud::PdfApi* | [**get_document_ink_annotations**](docs/PdfApi.md#get_document_ink_annotations) | **GET** /pdf/\{name}/annotations/ink | Read document ink annotations.
*AsposePdfCloud::PdfApi* | [**get_document_line_annotations**](docs/PdfApi.md#get_document_line_annotations) | **GET** /pdf/\{name}/annotations/line | Read document line annotations.
*AsposePdfCloud::PdfApi* | [**get_document_list_box_fields**](docs/PdfApi.md#get_document_list_box_fields) | **GET** /pdf/\{name}/fields/listbox | Read document listbox fields.
*AsposePdfCloud::PdfApi* | [**get_document_movie_annotations**](docs/PdfApi.md#get_document_movie_annotations) | **GET** /pdf/\{name}/annotations/movie | Read document movie annotations.
*AsposePdfCloud::PdfApi* | [**get_document_poly_line_annotations**](docs/PdfApi.md#get_document_poly_line_annotations) | **GET** /pdf/\{name}/annotations/polyline | Read document polyline annotations.
*AsposePdfCloud::PdfApi* | [**get_document_polygon_annotations**](docs/PdfApi.md#get_document_polygon_annotations) | **GET** /pdf/\{name}/annotations/polygon | Read document polygon annotations.
*AsposePdfCloud::PdfApi* | [**get_document_popup_annotations**](docs/PdfApi.md#get_document_popup_annotations) | **GET** /pdf/\{name}/annotations/popup | Read document popup annotations.
*AsposePdfCloud::PdfApi* | [**get_document_popup_annotations_by_parent**](docs/PdfApi.md#get_document_popup_annotations_by_parent) | **GET** /pdf/\{name}/annotations/\{annotationId}/popup | Read document popup annotations by parent id.
*AsposePdfCloud::PdfApi* | [**get_document_properties**](docs/PdfApi.md#get_document_properties) | **GET** /pdf/\{name}/documentproperties | Read document properties.
*AsposePdfCloud::PdfApi* | [**get_document_property**](docs/PdfApi.md#get_document_property) | **GET** /pdf/\{name}/documentproperties/\{propertyName} | Read document property by name.
*AsposePdfCloud::PdfApi* | [**get_document_radio_button_fields**](docs/PdfApi.md#get_document_radio_button_fields) | **GET** /pdf/\{name}/fields/radiobutton | Read document radiobutton fields.
*AsposePdfCloud::PdfApi* | [**get_document_redaction_annotations**](docs/PdfApi.md#get_document_redaction_annotations) | **GET** /pdf/\{name}/annotations/redaction | Read document redaction annotations.
*AsposePdfCloud::PdfApi* | [**get_document_screen_annotations**](docs/PdfApi.md#get_document_screen_annotations) | **GET** /pdf/\{name}/annotations/screen | Read document screen annotations.
*AsposePdfCloud::PdfApi* | [**get_document_signature_fields**](docs/PdfApi.md#get_document_signature_fields) | **GET** /pdf/\{name}/fields/signature | Read document signature fields.
*AsposePdfCloud::PdfApi* | [**get_document_sound_annotations**](docs/PdfApi.md#get_document_sound_annotations) | **GET** /pdf/\{name}/annotations/sound | Read document sound annotations.
*AsposePdfCloud::PdfApi* | [**get_document_square_annotations**](docs/PdfApi.md#get_document_square_annotations) | **GET** /pdf/\{name}/annotations/square | Read document square annotations.
*AsposePdfCloud::PdfApi* | [**get_document_squiggly_annotations**](docs/PdfApi.md#get_document_squiggly_annotations) | **GET** /pdf/\{name}/annotations/squiggly | Read document squiggly annotations.
*AsposePdfCloud::PdfApi* | [**get_document_stamp_annotations**](docs/PdfApi.md#get_document_stamp_annotations) | **GET** /pdf/\{name}/annotations/stamp | Read document stamp annotations.
*AsposePdfCloud::PdfApi* | [**get_document_stamps**](docs/PdfApi.md#get_document_stamps) | **GET** /pdf/\{name}/stamps | Read document stamps.
*AsposePdfCloud::PdfApi* | [**get_document_strike_out_annotations**](docs/PdfApi.md#get_document_strike_out_annotations) | **GET** /pdf/\{name}/annotations/strikeout | Read document StrikeOut annotations.
*AsposePdfCloud::PdfApi* | [**get_document_tables**](docs/PdfApi.md#get_document_tables) | **GET** /pdf/\{name}/tables | Read document tables.
*AsposePdfCloud::PdfApi* | [**get_document_text_annotations**](docs/PdfApi.md#get_document_text_annotations) | **GET** /pdf/\{name}/annotations/text | Read document text annotations.
*AsposePdfCloud::PdfApi* | [**get_document_text_box_fields**](docs/PdfApi.md#get_document_text_box_fields) | **GET** /pdf/\{name}/fields/textbox | Read document text box fields.
*AsposePdfCloud::PdfApi* | [**get_document_underline_annotations**](docs/PdfApi.md#get_document_underline_annotations) | **GET** /pdf/\{name}/annotations/underline | Read document underline annotations.
*AsposePdfCloud::PdfApi* | [**get_download_document_attachment_by_index**](docs/PdfApi.md#get_download_document_attachment_by_index) | **GET** /pdf/\{name}/attachments/\{attachmentIndex}/download | Download document attachment content by its index.
*AsposePdfCloud::PdfApi* | [**get_epub_in_storage_to_pdf**](docs/PdfApi.md#get_epub_in_storage_to_pdf) | **GET** /pdf/create/epub | Convert EPUB file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_export_fields_from_pdf_to_fdf_in_storage**](docs/PdfApi.md#get_export_fields_from_pdf_to_fdf_in_storage) | **GET** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file.
*AsposePdfCloud::PdfApi* | [**get_export_fields_from_pdf_to_xfdf_in_storage**](docs/PdfApi.md#get_export_fields_from_pdf_to_xfdf_in_storage) | **GET** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file.
*AsposePdfCloud::PdfApi* | [**get_export_fields_from_pdf_to_xml_in_storage**](docs/PdfApi.md#get_export_fields_from_pdf_to_xml_in_storage) | **GET** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file.
*AsposePdfCloud::PdfApi* | [**get_field**](docs/PdfApi.md#get_field) | **GET** /pdf/\{name}/fields/\{fieldName} | Get document field by name.
*AsposePdfCloud::PdfApi* | [**get_fields**](docs/PdfApi.md#get_fields) | **GET** /pdf/\{name}/fields | Get document fields.
*AsposePdfCloud::PdfApi* | [**get_file_attachment_annotation**](docs/PdfApi.md#get_file_attachment_annotation) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Read document page FileAttachment annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_file_attachment_annotation_data**](docs/PdfApi.md#get_file_attachment_annotation_data) | **GET** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data | Read document page FileAttachment annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_file_versions**](docs/PdfApi.md#get_file_versions) | **GET** /pdf/storage/version/\{path} | Get file versions
*AsposePdfCloud::PdfApi* | [**get_files_list**](docs/PdfApi.md#get_files_list) | **GET** /pdf/storage/folder/\{path} | Get all files and folders within a folder
*AsposePdfCloud::PdfApi* | [**get_free_text_annotation**](docs/PdfApi.md#get_free_text_annotation) | **GET** /pdf/\{name}/annotations/freetext/\{annotationId} | Read document page free text annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_highlight_annotation**](docs/PdfApi.md#get_highlight_annotation) | **GET** /pdf/\{name}/annotations/highlight/\{annotationId} | Read document page highlight annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_html_in_storage_to_pdf**](docs/PdfApi.md#get_html_in_storage_to_pdf) | **GET** /pdf/create/html | Convert HTML file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_image**](docs/PdfApi.md#get_image) | **GET** /pdf/\{name}/images/\{imageId} | Read document image by ID.
*AsposePdfCloud::PdfApi* | [**get_image_extract_as_gif**](docs/PdfApi.md#get_image_extract_as_gif) | **GET** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format
*AsposePdfCloud::PdfApi* | [**get_image_extract_as_jpeg**](docs/PdfApi.md#get_image_extract_as_jpeg) | **GET** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format
*AsposePdfCloud::PdfApi* | [**get_image_extract_as_png**](docs/PdfApi.md#get_image_extract_as_png) | **GET** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format
*AsposePdfCloud::PdfApi* | [**get_image_extract_as_tiff**](docs/PdfApi.md#get_image_extract_as_tiff) | **GET** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format
*AsposePdfCloud::PdfApi* | [**get_images**](docs/PdfApi.md#get_images) | **GET** /pdf/\{name}/pages/\{pageNumber}/images | Read document images.
*AsposePdfCloud::PdfApi* | [**get_import_fields_from_fdf_in_storage**](docs/PdfApi.md#get_import_fields_from_fdf_in_storage) | **GET** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
*AsposePdfCloud::PdfApi* | [**get_import_fields_from_xfdf_in_storage**](docs/PdfApi.md#get_import_fields_from_xfdf_in_storage) | **GET** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
*AsposePdfCloud::PdfApi* | [**get_import_fields_from_xml_in_storage**](docs/PdfApi.md#get_import_fields_from_xml_in_storage) | **GET** /pdf/\{name}/import/xml | Import from XML file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_ink_annotation**](docs/PdfApi.md#get_ink_annotation) | **GET** /pdf/\{name}/annotations/ink/\{annotationId} | Read document page ink annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_la_te_x_in_storage_to_pdf**](docs/PdfApi.md#get_la_te_x_in_storage_to_pdf) | **GET** /pdf/create/latex | Convert TeX file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_line_annotation**](docs/PdfApi.md#get_line_annotation) | **GET** /pdf/\{name}/annotations/line/\{annotationId} | Read document page line annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_link_annotation**](docs/PdfApi.md#get_link_annotation) | **GET** /pdf/\{name}/links/\{linkId} | Read document link annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_list_box_field**](docs/PdfApi.md#get_list_box_field) | **GET** /pdf/\{name}/fields/listbox/\{fieldName} | Read document listbox field by name.
*AsposePdfCloud::PdfApi* | [**get_markdown_in_storage_to_pdf**](docs/PdfApi.md#get_markdown_in_storage_to_pdf) | **GET** /pdf/create/markdown | Convert MD file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_mht_in_storage_to_pdf**](docs/PdfApi.md#get_mht_in_storage_to_pdf) | **GET** /pdf/create/mht | Convert MHT file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_movie_annotation**](docs/PdfApi.md#get_movie_annotation) | **GET** /pdf/\{name}/annotations/movie/\{annotationId} | Read document page movie annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_page**](docs/PdfApi.md#get_page) | **GET** /pdf/\{name}/pages/\{pageNumber} | Read document page info.
*AsposePdfCloud::PdfApi* | [**get_page_annotations**](docs/PdfApi.md#get_page_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations | Read document page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
*AsposePdfCloud::PdfApi* | [**get_page_caret_annotations**](docs/PdfApi.md#get_page_caret_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Read document page caret annotations.
*AsposePdfCloud::PdfApi* | [**get_page_check_box_fields**](docs/PdfApi.md#get_page_check_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/checkbox | Read document page checkbox fields.
*AsposePdfCloud::PdfApi* | [**get_page_circle_annotations**](docs/PdfApi.md#get_page_circle_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Read document page circle annotations.
*AsposePdfCloud::PdfApi* | [**get_page_combo_box_fields**](docs/PdfApi.md#get_page_combo_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/combobox | Read document page combobox fields.
*AsposePdfCloud::PdfApi* | [**get_page_convert_to_bmp**](docs/PdfApi.md#get_page_convert_to_bmp) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to Bmp image and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_page_convert_to_emf**](docs/PdfApi.md#get_page_convert_to_emf) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to Emf image and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_page_convert_to_gif**](docs/PdfApi.md#get_page_convert_to_gif) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to Gif image and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_page_convert_to_jpeg**](docs/PdfApi.md#get_page_convert_to_jpeg) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_page_convert_to_png**](docs/PdfApi.md#get_page_convert_to_png) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to Png image and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_page_convert_to_tiff**](docs/PdfApi.md#get_page_convert_to_tiff) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image  and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_page_file_attachment_annotations**](docs/PdfApi.md#get_page_file_attachment_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Read document page FileAttachment annotations.
*AsposePdfCloud::PdfApi* | [**get_page_free_text_annotations**](docs/PdfApi.md#get_page_free_text_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Read document page free text annotations.
*AsposePdfCloud::PdfApi* | [**get_page_highlight_annotations**](docs/PdfApi.md#get_page_highlight_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Read document page highlight annotations.
*AsposePdfCloud::PdfApi* | [**get_page_ink_annotations**](docs/PdfApi.md#get_page_ink_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Read document page ink annotations.
*AsposePdfCloud::PdfApi* | [**get_page_line_annotations**](docs/PdfApi.md#get_page_line_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Read document page line annotations.
*AsposePdfCloud::PdfApi* | [**get_page_link_annotation**](docs/PdfApi.md#get_page_link_annotation) | **GET** /pdf/\{name}/pages/\{pageNumber}/links/\{linkId} | Read document page link annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_page_link_annotations**](docs/PdfApi.md#get_page_link_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/links | Read document page link annotations.
*AsposePdfCloud::PdfApi* | [**get_page_list_box_fields**](docs/PdfApi.md#get_page_list_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/listbox | Read document page listbox fields.
*AsposePdfCloud::PdfApi* | [**get_page_movie_annotations**](docs/PdfApi.md#get_page_movie_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Read document page movie annotations.
*AsposePdfCloud::PdfApi* | [**get_page_poly_line_annotations**](docs/PdfApi.md#get_page_poly_line_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Read document page polyline annotations.
*AsposePdfCloud::PdfApi* | [**get_page_polygon_annotations**](docs/PdfApi.md#get_page_polygon_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Read document page polygon annotations.
*AsposePdfCloud::PdfApi* | [**get_page_popup_annotations**](docs/PdfApi.md#get_page_popup_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/popup | Read document page popup annotations.
*AsposePdfCloud::PdfApi* | [**get_page_radio_button_fields**](docs/PdfApi.md#get_page_radio_button_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/radiobutton | Read document page radiobutton fields.
*AsposePdfCloud::PdfApi* | [**get_page_redaction_annotations**](docs/PdfApi.md#get_page_redaction_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Read document page redaction annotations.
*AsposePdfCloud::PdfApi* | [**get_page_screen_annotations**](docs/PdfApi.md#get_page_screen_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Read document page screen annotations.
*AsposePdfCloud::PdfApi* | [**get_page_signature_fields**](docs/PdfApi.md#get_page_signature_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/signature | Read document page signature fields.
*AsposePdfCloud::PdfApi* | [**get_page_sound_annotations**](docs/PdfApi.md#get_page_sound_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Read document page sound annotations.
*AsposePdfCloud::PdfApi* | [**get_page_square_annotations**](docs/PdfApi.md#get_page_square_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Read document page square annotations.
*AsposePdfCloud::PdfApi* | [**get_page_squiggly_annotations**](docs/PdfApi.md#get_page_squiggly_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Read document page squiggly annotations.
*AsposePdfCloud::PdfApi* | [**get_page_stamp_annotations**](docs/PdfApi.md#get_page_stamp_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Read document page stamp annotations.
*AsposePdfCloud::PdfApi* | [**get_page_stamps**](docs/PdfApi.md#get_page_stamps) | **GET** /pdf/\{name}/pages/\{pageNumber}/stamps | Read page document stamps.
*AsposePdfCloud::PdfApi* | [**get_page_strike_out_annotations**](docs/PdfApi.md#get_page_strike_out_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Read document page StrikeOut annotations.
*AsposePdfCloud::PdfApi* | [**get_page_tables**](docs/PdfApi.md#get_page_tables) | **GET** /pdf/\{name}/pages/\{pageNumber}/tables | Read document page tables.
*AsposePdfCloud::PdfApi* | [**get_page_text**](docs/PdfApi.md#get_page_text) | **GET** /pdf/\{name}/pages/\{pageNumber}/text | Read page text items.
*AsposePdfCloud::PdfApi* | [**get_page_text_annotations**](docs/PdfApi.md#get_page_text_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Read document page text annotations.
*AsposePdfCloud::PdfApi* | [**get_page_text_box_fields**](docs/PdfApi.md#get_page_text_box_fields) | **GET** /pdf/\{name}/page/\{pageNumber}/fields/textbox | Read document page text box fields.
*AsposePdfCloud::PdfApi* | [**get_page_underline_annotations**](docs/PdfApi.md#get_page_underline_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Read document page underline annotations.
*AsposePdfCloud::PdfApi* | [**get_pages**](docs/PdfApi.md#get_pages) | **GET** /pdf/\{name}/pages | Read document pages info.
*AsposePdfCloud::PdfApi* | [**get_pcl_in_storage_to_pdf**](docs/PdfApi.md#get_pcl_in_storage_to_pdf) | **GET** /pdf/create/pcl | Convert PCL file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_pdf_a_in_storage_to_pdf**](docs/PdfApi.md#get_pdf_a_in_storage_to_pdf) | **GET** /pdf/create/pdfa | Convert PDFA file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_doc**](docs/PdfApi.md#get_pdf_in_storage_to_doc) | **GET** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_epub**](docs/PdfApi.md#get_pdf_in_storage_to_epub) | **GET** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_html**](docs/PdfApi.md#get_pdf_in_storage_to_html) | **GET** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_la_te_x**](docs/PdfApi.md#get_pdf_in_storage_to_la_te_x) | **GET** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to TeX format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_mobi_xml**](docs/PdfApi.md#get_pdf_in_storage_to_mobi_xml) | **GET** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_pdf_a**](docs/PdfApi.md#get_pdf_in_storage_to_pdf_a) | **GET** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_pptx**](docs/PdfApi.md#get_pdf_in_storage_to_pptx) | **GET** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_svg**](docs/PdfApi.md#get_pdf_in_storage_to_svg) | **GET** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_te_x**](docs/PdfApi.md#get_pdf_in_storage_to_te_x) | **GET** /pdf/\{name}/convert/tex | Converts PDF document (located on storage) to TeX format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_tiff**](docs/PdfApi.md#get_pdf_in_storage_to_tiff) | **GET** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_xls**](docs/PdfApi.md#get_pdf_in_storage_to_xls) | **GET** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_xlsx**](docs/PdfApi.md#get_pdf_in_storage_to_xlsx) | **GET** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_xml**](docs/PdfApi.md#get_pdf_in_storage_to_xml) | **GET** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_pdf_in_storage_to_xps**](docs/PdfApi.md#get_pdf_in_storage_to_xps) | **GET** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and returns resulting file in response content
*AsposePdfCloud::PdfApi* | [**get_poly_line_annotation**](docs/PdfApi.md#get_poly_line_annotation) | **GET** /pdf/\{name}/annotations/polyline/\{annotationId} | Read document page polyline annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_polygon_annotation**](docs/PdfApi.md#get_polygon_annotation) | **GET** /pdf/\{name}/annotations/polygon/\{annotationId} | Read document page polygon annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_popup_annotation**](docs/PdfApi.md#get_popup_annotation) | **GET** /pdf/\{name}/annotations/popup/\{annotationId} | Read document page popup annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_ps_in_storage_to_pdf**](docs/PdfApi.md#get_ps_in_storage_to_pdf) | **GET** /pdf/create/ps | Convert PS file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_radio_button_field**](docs/PdfApi.md#get_radio_button_field) | **GET** /pdf/\{name}/fields/radiobutton/\{fieldName} | Read document RadioButton field by name.
*AsposePdfCloud::PdfApi* | [**get_redaction_annotation**](docs/PdfApi.md#get_redaction_annotation) | **GET** /pdf/\{name}/annotations/redaction/\{annotationId} | Read document page redaction annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_screen_annotation**](docs/PdfApi.md#get_screen_annotation) | **GET** /pdf/\{name}/annotations/screen/\{annotationId} | Read document page screen annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_screen_annotation_data**](docs/PdfApi.md#get_screen_annotation_data) | **GET** /pdf/\{name}/annotations/screen/\{annotationId}/data | Read document page screen annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_signature_field**](docs/PdfApi.md#get_signature_field) | **GET** /pdf/\{name}/fields/signature/\{fieldName} | Read document signature field by name.
*AsposePdfCloud::PdfApi* | [**get_sound_annotation**](docs/PdfApi.md#get_sound_annotation) | **GET** /pdf/\{name}/annotations/sound/\{annotationId} | Read document page sound annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_sound_annotation_data**](docs/PdfApi.md#get_sound_annotation_data) | **GET** /pdf/\{name}/annotations/sound/\{annotationId}/data | Read document page sound annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_square_annotation**](docs/PdfApi.md#get_square_annotation) | **GET** /pdf/\{name}/annotations/square/\{annotationId} | Read document page square annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_squiggly_annotation**](docs/PdfApi.md#get_squiggly_annotation) | **GET** /pdf/\{name}/annotations/squiggly/\{annotationId} | Read document page squiggly annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_stamp_annotation**](docs/PdfApi.md#get_stamp_annotation) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId} | Read document page stamp annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_stamp_annotation_data**](docs/PdfApi.md#get_stamp_annotation_data) | **GET** /pdf/\{name}/annotations/stamp/\{annotationId}/data | Read document page stamp annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_strike_out_annotation**](docs/PdfApi.md#get_strike_out_annotation) | **GET** /pdf/\{name}/annotations/strikeout/\{annotationId} | Read document page StrikeOut annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_svg_in_storage_to_pdf**](docs/PdfApi.md#get_svg_in_storage_to_pdf) | **GET** /pdf/create/svg | Convert SVG file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_table**](docs/PdfApi.md#get_table) | **GET** /pdf/\{name}/tables/\{tableId} | Read document page table by ID.
*AsposePdfCloud::PdfApi* | [**get_te_x_in_storage_to_pdf**](docs/PdfApi.md#get_te_x_in_storage_to_pdf) | **GET** /pdf/create/tex | Convert TeX file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_text**](docs/PdfApi.md#get_text) | **GET** /pdf/\{name}/text | Read document text.
*AsposePdfCloud::PdfApi* | [**get_text_annotation**](docs/PdfApi.md#get_text_annotation) | **GET** /pdf/\{name}/annotations/text/\{annotationId} | Read document page text annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_text_box_field**](docs/PdfApi.md#get_text_box_field) | **GET** /pdf/\{name}/fields/textbox/\{fieldName} | Read document text box field by name.
*AsposePdfCloud::PdfApi* | [**get_underline_annotation**](docs/PdfApi.md#get_underline_annotation) | **GET** /pdf/\{name}/annotations/underline/\{annotationId} | Read document page underline annotation by ID.
*AsposePdfCloud::PdfApi* | [**get_verify_signature**](docs/PdfApi.md#get_verify_signature) | **GET** /pdf/\{name}/verifySignature | Verify signature document.
*AsposePdfCloud::PdfApi* | [**get_web_in_storage_to_pdf**](docs/PdfApi.md#get_web_in_storage_to_pdf) | **GET** /pdf/create/web | Convert web page to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_words_per_page**](docs/PdfApi.md#get_words_per_page) | **GET** /pdf/\{name}/pages/wordCount | Get number of words per document page.
*AsposePdfCloud::PdfApi* | [**get_xfa_pdf_in_storage_to_acro_form**](docs/PdfApi.md#get_xfa_pdf_in_storage_to_acro_form) | **GET** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
*AsposePdfCloud::PdfApi* | [**get_xml_in_storage_to_pdf**](docs/PdfApi.md#get_xml_in_storage_to_pdf) | **GET** /pdf/create/xml | Convert XML file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_xps_in_storage_to_pdf**](docs/PdfApi.md#get_xps_in_storage_to_pdf) | **GET** /pdf/create/xps | Convert XPS file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**get_xsl_fo_in_storage_to_pdf**](docs/PdfApi.md#get_xsl_fo_in_storage_to_pdf) | **GET** /pdf/create/xslfo | Convert XslFo file (located on storage) to PDF format and return resulting file in response.
*AsposePdfCloud::PdfApi* | [**move_file**](docs/PdfApi.md#move_file) | **PUT** /pdf/storage/file/move/\{srcPath} | Move file
*AsposePdfCloud::PdfApi* | [**move_folder**](docs/PdfApi.md#move_folder) | **PUT** /pdf/storage/folder/move/\{srcPath} | Move folder
*AsposePdfCloud::PdfApi* | [**object_exists**](docs/PdfApi.md#object_exists) | **GET** /pdf/storage/exist/\{path} | Check if file or folder exists
*AsposePdfCloud::PdfApi* | [**post_append_document**](docs/PdfApi.md#post_append_document) | **POST** /pdf/\{name}/appendDocument | Append document to existing one.
*AsposePdfCloud::PdfApi* | [**post_bookmark**](docs/PdfApi.md#post_bookmark) | **POST** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Add document bookmarks.
*AsposePdfCloud::PdfApi* | [**post_change_password_document_in_storage**](docs/PdfApi.md#post_change_password_document_in_storage) | **POST** /pdf/\{name}/changepassword | Change document password in storage.
*AsposePdfCloud::PdfApi* | [**post_check_box_fields**](docs/PdfApi.md#post_check_box_fields) | **POST** /pdf/\{name}/fields/checkbox | Add document checkbox fields.
*AsposePdfCloud::PdfApi* | [**post_combo_box_fields**](docs/PdfApi.md#post_combo_box_fields) | **POST** /pdf/\{name}/fields/combobox | Add document combobox fields.
*AsposePdfCloud::PdfApi* | [**post_create_document**](docs/PdfApi.md#post_create_document) | **POST** /pdf/\{name} | Create empty document.
*AsposePdfCloud::PdfApi* | [**post_create_field**](docs/PdfApi.md#post_create_field) | **POST** /pdf/\{name}/fields | Create field.
*AsposePdfCloud::PdfApi* | [**post_decrypt_document_in_storage**](docs/PdfApi.md#post_decrypt_document_in_storage) | **POST** /pdf/\{name}/decrypt | Decrypt document in storage.
*AsposePdfCloud::PdfApi* | [**post_document_image_footer**](docs/PdfApi.md#post_document_image_footer) | **POST** /pdf/\{name}/footer/image | Add document image footer.
*AsposePdfCloud::PdfApi* | [**post_document_image_header**](docs/PdfApi.md#post_document_image_header) | **POST** /pdf/\{name}/header/image | Add document image header.
*AsposePdfCloud::PdfApi* | [**post_document_page_number_stamps**](docs/PdfApi.md#post_document_page_number_stamps) | **POST** /pdf/\{name}/stamps/pagenumber | Add document page number stamps.
*AsposePdfCloud::PdfApi* | [**post_document_text_footer**](docs/PdfApi.md#post_document_text_footer) | **POST** /pdf/\{name}/footer/text | Add document text footer.
*AsposePdfCloud::PdfApi* | [**post_document_text_header**](docs/PdfApi.md#post_document_text_header) | **POST** /pdf/\{name}/header/text | Add document text header.
*AsposePdfCloud::PdfApi* | [**post_document_text_replace**](docs/PdfApi.md#post_document_text_replace) | **POST** /pdf/\{name}/text/replace | Document's replace text method.
*AsposePdfCloud::PdfApi* | [**post_encrypt_document_in_storage**](docs/PdfApi.md#post_encrypt_document_in_storage) | **POST** /pdf/\{name}/encrypt | Encrypt document in storage.
*AsposePdfCloud::PdfApi* | [**post_flatten_document**](docs/PdfApi.md#post_flatten_document) | **POST** /pdf/\{name}/flatten | Flatten the document.
*AsposePdfCloud::PdfApi* | [**post_import_fields_from_fdf**](docs/PdfApi.md#post_import_fields_from_fdf) | **POST** /pdf/\{name}/import/fdf | Update fields from FDF file in request.
*AsposePdfCloud::PdfApi* | [**post_import_fields_from_xfdf**](docs/PdfApi.md#post_import_fields_from_xfdf) | **POST** /pdf/\{name}/import/xfdf | Update fields from XFDF file in request.
*AsposePdfCloud::PdfApi* | [**post_import_fields_from_xml**](docs/PdfApi.md#post_import_fields_from_xml) | **POST** /pdf/\{name}/import/xml | Update fields from XML file in request.
*AsposePdfCloud::PdfApi* | [**post_insert_image**](docs/PdfApi.md#post_insert_image) | **POST** /pdf/\{name}/pages/\{pageNumber}/images | Insert image to document page.
*AsposePdfCloud::PdfApi* | [**post_list_box_fields**](docs/PdfApi.md#post_list_box_fields) | **POST** /pdf/\{name}/fields/listbox | Add document listbox fields.
*AsposePdfCloud::PdfApi* | [**post_move_page**](docs/PdfApi.md#post_move_page) | **POST** /pdf/\{name}/pages/\{pageNumber}/movePage | Move page to new position.
*AsposePdfCloud::PdfApi* | [**post_optimize_document**](docs/PdfApi.md#post_optimize_document) | **POST** /pdf/\{name}/optimize | Optimize document.
*AsposePdfCloud::PdfApi* | [**post_page_caret_annotations**](docs/PdfApi.md#post_page_caret_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/caret | Add document page caret annotations.
*AsposePdfCloud::PdfApi* | [**post_page_certify**](docs/PdfApi.md#post_page_certify) | **POST** /pdf/\{name}/pages/\{pageNumber}/certify | Certify document page.
*AsposePdfCloud::PdfApi* | [**post_page_circle_annotations**](docs/PdfApi.md#post_page_circle_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/circle | Add document page circle annotations.
*AsposePdfCloud::PdfApi* | [**post_page_file_attachment_annotations**](docs/PdfApi.md#post_page_file_attachment_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/fileattachment | Add document page FileAttachment annotations.
*AsposePdfCloud::PdfApi* | [**post_page_free_text_annotations**](docs/PdfApi.md#post_page_free_text_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Add document page free text annotations.
*AsposePdfCloud::PdfApi* | [**post_page_highlight_annotations**](docs/PdfApi.md#post_page_highlight_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/highlight | Add document page highlight annotations.
*AsposePdfCloud::PdfApi* | [**post_page_image_stamps**](docs/PdfApi.md#post_page_image_stamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/image | Add document page image stamps.
*AsposePdfCloud::PdfApi* | [**post_page_ink_annotations**](docs/PdfApi.md#post_page_ink_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/ink | Add document page ink annotations.
*AsposePdfCloud::PdfApi* | [**post_page_line_annotations**](docs/PdfApi.md#post_page_line_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/line | Add document page line annotations.
*AsposePdfCloud::PdfApi* | [**post_page_link_annotations**](docs/PdfApi.md#post_page_link_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/links | Add document page link annotations.
*AsposePdfCloud::PdfApi* | [**post_page_movie_annotations**](docs/PdfApi.md#post_page_movie_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/movie | Add document page movie annotations.
*AsposePdfCloud::PdfApi* | [**post_page_pdf_page_stamps**](docs/PdfApi.md#post_page_pdf_page_stamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/pdfpage | Add document pdf page stamps.
*AsposePdfCloud::PdfApi* | [**post_page_poly_line_annotations**](docs/PdfApi.md#post_page_poly_line_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polyline | Add document page polyline annotations.
*AsposePdfCloud::PdfApi* | [**post_page_polygon_annotations**](docs/PdfApi.md#post_page_polygon_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/polygon | Add document page polygon annotations.
*AsposePdfCloud::PdfApi* | [**post_page_redaction_annotations**](docs/PdfApi.md#post_page_redaction_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/redaction | Add document page redaction annotations.
*AsposePdfCloud::PdfApi* | [**post_page_screen_annotations**](docs/PdfApi.md#post_page_screen_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/screen | Add document page screen annotations.
*AsposePdfCloud::PdfApi* | [**post_page_sound_annotations**](docs/PdfApi.md#post_page_sound_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/sound | Add document page sound annotations.
*AsposePdfCloud::PdfApi* | [**post_page_square_annotations**](docs/PdfApi.md#post_page_square_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/square | Add document page square annotations.
*AsposePdfCloud::PdfApi* | [**post_page_squiggly_annotations**](docs/PdfApi.md#post_page_squiggly_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/squiggly | Add document page squiggly annotations.
*AsposePdfCloud::PdfApi* | [**post_page_stamp_annotations**](docs/PdfApi.md#post_page_stamp_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/stamp | Add document page stamp annotations.
*AsposePdfCloud::PdfApi* | [**post_page_strike_out_annotations**](docs/PdfApi.md#post_page_strike_out_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/strikeout | Add document page StrikeOut annotations.
*AsposePdfCloud::PdfApi* | [**post_page_tables**](docs/PdfApi.md#post_page_tables) | **POST** /pdf/\{name}/pages/\{pageNumber}/tables | Add document page tables.
*AsposePdfCloud::PdfApi* | [**post_page_text_annotations**](docs/PdfApi.md#post_page_text_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Add document page text annotations.
*AsposePdfCloud::PdfApi* | [**post_page_text_replace**](docs/PdfApi.md#post_page_text_replace) | **POST** /pdf/\{name}/pages/\{pageNumber}/text/replace | Page's replace text method.
*AsposePdfCloud::PdfApi* | [**post_page_text_stamps**](docs/PdfApi.md#post_page_text_stamps) | **POST** /pdf/\{name}/pages/\{pageNumber}/stamps/text | Add document page text stamps.
*AsposePdfCloud::PdfApi* | [**post_page_underline_annotations**](docs/PdfApi.md#post_page_underline_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/underline | Add document page underline annotations.
*AsposePdfCloud::PdfApi* | [**post_popup_annotation**](docs/PdfApi.md#post_popup_annotation) | **POST** /pdf/\{name}/annotations/\{annotationId}/popup | Add document popup annotations.
*AsposePdfCloud::PdfApi* | [**post_radio_button_fields**](docs/PdfApi.md#post_radio_button_fields) | **POST** /pdf/\{name}/fields/radiobutton | Add document RadioButton fields.
*AsposePdfCloud::PdfApi* | [**post_sign_document**](docs/PdfApi.md#post_sign_document) | **POST** /pdf/\{name}/sign | Sign document.
*AsposePdfCloud::PdfApi* | [**post_sign_page**](docs/PdfApi.md#post_sign_page) | **POST** /pdf/\{name}/pages/\{pageNumber}/sign | Sign page.
*AsposePdfCloud::PdfApi* | [**post_signature_field**](docs/PdfApi.md#post_signature_field) | **POST** /pdf/\{name}/fields/signature | Add document signature field.
*AsposePdfCloud::PdfApi* | [**post_split_document**](docs/PdfApi.md#post_split_document) | **POST** /pdf/\{name}/split | Split document to parts.
*AsposePdfCloud::PdfApi* | [**post_text_box_fields**](docs/PdfApi.md#post_text_box_fields) | **POST** /pdf/\{name}/fields/textbox | Add document text box fields.
*AsposePdfCloud::PdfApi* | [**put_add_new_page**](docs/PdfApi.md#put_add_new_page) | **PUT** /pdf/\{name}/pages | Add new page to end of the document.
*AsposePdfCloud::PdfApi* | [**put_add_text**](docs/PdfApi.md#put_add_text) | **PUT** /pdf/\{name}/pages/\{pageNumber}/text | Add text to PDF document page.
*AsposePdfCloud::PdfApi* | [**put_annotations_flatten**](docs/PdfApi.md#put_annotations_flatten) | **PUT** /pdf/\{name}/annotations/flatten | Flattens the annotations of the specified types
*AsposePdfCloud::PdfApi* | [**put_bookmark**](docs/PdfApi.md#put_bookmark) | **PUT** /pdf/\{name}/bookmarks/bookmark/\{bookmarkPath} | Update document bookmark.
*AsposePdfCloud::PdfApi* | [**put_caret_annotation**](docs/PdfApi.md#put_caret_annotation) | **PUT** /pdf/\{name}/annotations/caret/\{annotationId} | Replace document caret annotation
*AsposePdfCloud::PdfApi* | [**put_change_password_document**](docs/PdfApi.md#put_change_password_document) | **PUT** /pdf/changepassword | Change document password from content.
*AsposePdfCloud::PdfApi* | [**put_check_box_field**](docs/PdfApi.md#put_check_box_field) | **PUT** /pdf/\{name}/fields/checkbox/\{fieldName} | Replace document checkbox field
*AsposePdfCloud::PdfApi* | [**put_circle_annotation**](docs/PdfApi.md#put_circle_annotation) | **PUT** /pdf/\{name}/annotations/circle/\{annotationId} | Replace document circle annotation
*AsposePdfCloud::PdfApi* | [**put_combo_box_field**](docs/PdfApi.md#put_combo_box_field) | **PUT** /pdf/\{name}/fields/combobox/\{fieldName} | Replace document combobox field
*AsposePdfCloud::PdfApi* | [**put_create_document**](docs/PdfApi.md#put_create_document) | **PUT** /pdf/\{name} | Create empty document.
*AsposePdfCloud::PdfApi* | [**put_decrypt_document**](docs/PdfApi.md#put_decrypt_document) | **PUT** /pdf/decrypt | Decrypt document from content.
*AsposePdfCloud::PdfApi* | [**put_document_display_properties**](docs/PdfApi.md#put_document_display_properties) | **PUT** /pdf/\{name}/displayproperties | Update document display properties.
*AsposePdfCloud::PdfApi* | [**put_encrypt_document**](docs/PdfApi.md#put_encrypt_document) | **PUT** /pdf/encrypt | Encrypt document from content.
*AsposePdfCloud::PdfApi* | [**put_epub_in_storage_to_pdf**](docs/PdfApi.md#put_epub_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/epub | Convert EPUB file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_export_fields_from_pdf_to_fdf_in_storage**](docs/PdfApi.md#put_export_fields_from_pdf_to_fdf_in_storage) | **PUT** /pdf/\{name}/export/fdf | Export fields from from PDF in storage to FDF file in storage.
*AsposePdfCloud::PdfApi* | [**put_export_fields_from_pdf_to_xfdf_in_storage**](docs/PdfApi.md#put_export_fields_from_pdf_to_xfdf_in_storage) | **PUT** /pdf/\{name}/export/xfdf | Export fields from from PDF in storage to XFDF file in storage.
*AsposePdfCloud::PdfApi* | [**put_export_fields_from_pdf_to_xml_in_storage**](docs/PdfApi.md#put_export_fields_from_pdf_to_xml_in_storage) | **PUT** /pdf/\{name}/export/xml | Export fields from from PDF in storage to XML file in storage.
*AsposePdfCloud::PdfApi* | [**put_fields_flatten**](docs/PdfApi.md#put_fields_flatten) | **PUT** /pdf/\{name}/fields/flatten | Flatten form fields in document.
*AsposePdfCloud::PdfApi* | [**put_file_attachment_annotation**](docs/PdfApi.md#put_file_attachment_annotation) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId} | Replace document FileAttachment annotation
*AsposePdfCloud::PdfApi* | [**put_file_attachment_annotation_data_extract**](docs/PdfApi.md#put_file_attachment_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/fileattachment/\{annotationId}/data/extract | Extract document FileAttachment annotation content to storage
*AsposePdfCloud::PdfApi* | [**put_free_text_annotation**](docs/PdfApi.md#put_free_text_annotation) | **PUT** /pdf/\{name}/annotations/freetext/\{annotationId} | Replace document free text annotation
*AsposePdfCloud::PdfApi* | [**put_highlight_annotation**](docs/PdfApi.md#put_highlight_annotation) | **PUT** /pdf/\{name}/annotations/highlight/\{annotationId} | Replace document highlight annotation
*AsposePdfCloud::PdfApi* | [**put_html_in_storage_to_pdf**](docs/PdfApi.md#put_html_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/html | Convert HTML file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_image_extract_as_gif**](docs/PdfApi.md#put_image_extract_as_gif) | **PUT** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format to folder
*AsposePdfCloud::PdfApi* | [**put_image_extract_as_jpeg**](docs/PdfApi.md#put_image_extract_as_jpeg) | **PUT** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format to folder
*AsposePdfCloud::PdfApi* | [**put_image_extract_as_png**](docs/PdfApi.md#put_image_extract_as_png) | **PUT** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format to folder
*AsposePdfCloud::PdfApi* | [**put_image_extract_as_tiff**](docs/PdfApi.md#put_image_extract_as_tiff) | **PUT** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format to folder
*AsposePdfCloud::PdfApi* | [**put_image_in_storage_to_pdf**](docs/PdfApi.md#put_image_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/images | Convert image file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_images_extract_as_gif**](docs/PdfApi.md#put_images_extract_as_gif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/gif | Extract document images in GIF format to folder.
*AsposePdfCloud::PdfApi* | [**put_images_extract_as_jpeg**](docs/PdfApi.md#put_images_extract_as_jpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/jpeg | Extract document images in JPEG format to folder.
*AsposePdfCloud::PdfApi* | [**put_images_extract_as_png**](docs/PdfApi.md#put_images_extract_as_png) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/png | Extract document images in PNG format to folder.
*AsposePdfCloud::PdfApi* | [**put_images_extract_as_tiff**](docs/PdfApi.md#put_images_extract_as_tiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/tiff | Extract document images in TIFF format to folder.
*AsposePdfCloud::PdfApi* | [**put_import_fields_from_fdf_in_storage**](docs/PdfApi.md#put_import_fields_from_fdf_in_storage) | **PUT** /pdf/\{name}/import/fdf | Update fields from FDF file in storage.
*AsposePdfCloud::PdfApi* | [**put_import_fields_from_xfdf_in_storage**](docs/PdfApi.md#put_import_fields_from_xfdf_in_storage) | **PUT** /pdf/\{name}/import/xfdf | Update fields from XFDF file in storage.
*AsposePdfCloud::PdfApi* | [**put_import_fields_from_xml_in_storage**](docs/PdfApi.md#put_import_fields_from_xml_in_storage) | **PUT** /pdf/\{name}/import/xml | Update fields from XML file in storage.
*AsposePdfCloud::PdfApi* | [**put_ink_annotation**](docs/PdfApi.md#put_ink_annotation) | **PUT** /pdf/\{name}/annotations/ink/\{annotationId} | Replace document ink annotation
*AsposePdfCloud::PdfApi* | [**put_la_te_x_in_storage_to_pdf**](docs/PdfApi.md#put_la_te_x_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/latex | Convert TeX file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_line_annotation**](docs/PdfApi.md#put_line_annotation) | **PUT** /pdf/\{name}/annotations/line/\{annotationId} | Replace document line annotation
*AsposePdfCloud::PdfApi* | [**put_link_annotation**](docs/PdfApi.md#put_link_annotation) | **PUT** /pdf/\{name}/links/\{linkId} | Replace document page link annotations
*AsposePdfCloud::PdfApi* | [**put_list_box_field**](docs/PdfApi.md#put_list_box_field) | **PUT** /pdf/\{name}/fields/listbox/\{fieldName} | Replace document listbox field
*AsposePdfCloud::PdfApi* | [**put_markdown_in_storage_to_pdf**](docs/PdfApi.md#put_markdown_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/markdown | Convert MD file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_merge_documents**](docs/PdfApi.md#put_merge_documents) | **PUT** /pdf/\{name}/merge | Merge a list of documents.
*AsposePdfCloud::PdfApi* | [**put_mht_in_storage_to_pdf**](docs/PdfApi.md#put_mht_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/mht | Convert MHT file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_movie_annotation**](docs/PdfApi.md#put_movie_annotation) | **PUT** /pdf/\{name}/annotations/movie/\{annotationId} | Replace document movie annotation
*AsposePdfCloud::PdfApi* | [**put_page_add_stamp**](docs/PdfApi.md#put_page_add_stamp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/stamp | Add page stamp.
*AsposePdfCloud::PdfApi* | [**put_page_convert_to_bmp**](docs/PdfApi.md#put_page_convert_to_bmp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to bmp image and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_page_convert_to_emf**](docs/PdfApi.md#put_page_convert_to_emf) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to emf image and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_page_convert_to_gif**](docs/PdfApi.md#put_page_convert_to_gif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to gif image and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_page_convert_to_jpeg**](docs/PdfApi.md#put_page_convert_to_jpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_page_convert_to_png**](docs/PdfApi.md#put_page_convert_to_png) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to png image and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_page_convert_to_tiff**](docs/PdfApi.md#put_page_convert_to_tiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pcl_in_storage_to_pdf**](docs/PdfApi.md#put_pcl_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/pcl | Convert PCL file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_a_in_storage_to_pdf**](docs/PdfApi.md#put_pdf_a_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/pdfa | Convert PDFA file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_doc**](docs/PdfApi.md#put_pdf_in_request_to_doc) | **PUT** /pdf/convert/doc | Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_epub**](docs/PdfApi.md#put_pdf_in_request_to_epub) | **PUT** /pdf/convert/epub | Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_html**](docs/PdfApi.md#put_pdf_in_request_to_html) | **PUT** /pdf/convert/html | Converts PDF document (in request content) to Html format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_la_te_x**](docs/PdfApi.md#put_pdf_in_request_to_la_te_x) | **PUT** /pdf/convert/latex | Converts PDF document (in request content) to TeX format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_mobi_xml**](docs/PdfApi.md#put_pdf_in_request_to_mobi_xml) | **PUT** /pdf/convert/mobixml | Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_pdf_a**](docs/PdfApi.md#put_pdf_in_request_to_pdf_a) | **PUT** /pdf/convert/pdfa | Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_pptx**](docs/PdfApi.md#put_pdf_in_request_to_pptx) | **PUT** /pdf/convert/pptx | Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_svg**](docs/PdfApi.md#put_pdf_in_request_to_svg) | **PUT** /pdf/convert/svg | Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_te_x**](docs/PdfApi.md#put_pdf_in_request_to_te_x) | **PUT** /pdf/convert/tex | Converts PDF document (in request content) to TeX format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_tiff**](docs/PdfApi.md#put_pdf_in_request_to_tiff) | **PUT** /pdf/convert/tiff | Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_xls**](docs/PdfApi.md#put_pdf_in_request_to_xls) | **PUT** /pdf/convert/xls | Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_xlsx**](docs/PdfApi.md#put_pdf_in_request_to_xlsx) | **PUT** /pdf/convert/xlsx | Converts PDF document (in request content) to XLSX format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_xml**](docs/PdfApi.md#put_pdf_in_request_to_xml) | **PUT** /pdf/convert/xml | Converts PDF document (in request content) to XML format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_request_to_xps**](docs/PdfApi.md#put_pdf_in_request_to_xps) | **PUT** /pdf/convert/xps | Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_doc**](docs/PdfApi.md#put_pdf_in_storage_to_doc) | **PUT** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_epub**](docs/PdfApi.md#put_pdf_in_storage_to_epub) | **PUT** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_html**](docs/PdfApi.md#put_pdf_in_storage_to_html) | **PUT** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_la_te_x**](docs/PdfApi.md#put_pdf_in_storage_to_la_te_x) | **PUT** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to TeX format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_mobi_xml**](docs/PdfApi.md#put_pdf_in_storage_to_mobi_xml) | **PUT** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_pdf_a**](docs/PdfApi.md#put_pdf_in_storage_to_pdf_a) | **PUT** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_pptx**](docs/PdfApi.md#put_pdf_in_storage_to_pptx) | **PUT** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_svg**](docs/PdfApi.md#put_pdf_in_storage_to_svg) | **PUT** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_te_x**](docs/PdfApi.md#put_pdf_in_storage_to_te_x) | **PUT** /pdf/\{name}/convert/tex | Converts PDF document (located on storage) to TeX format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_tiff**](docs/PdfApi.md#put_pdf_in_storage_to_tiff) | **PUT** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_xls**](docs/PdfApi.md#put_pdf_in_storage_to_xls) | **PUT** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_xlsx**](docs/PdfApi.md#put_pdf_in_storage_to_xlsx) | **PUT** /pdf/\{name}/convert/xlsx | Converts PDF document (located on storage) to XLSX format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_xml**](docs/PdfApi.md#put_pdf_in_storage_to_xml) | **PUT** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_pdf_in_storage_to_xps**](docs/PdfApi.md#put_pdf_in_storage_to_xps) | **PUT** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_poly_line_annotation**](docs/PdfApi.md#put_poly_line_annotation) | **PUT** /pdf/\{name}/annotations/polyline/\{annotationId} | Replace document polyline annotation
*AsposePdfCloud::PdfApi* | [**put_polygon_annotation**](docs/PdfApi.md#put_polygon_annotation) | **PUT** /pdf/\{name}/annotations/polygon/\{annotationId} | Replace document polygon annotation
*AsposePdfCloud::PdfApi* | [**put_popup_annotation**](docs/PdfApi.md#put_popup_annotation) | **PUT** /pdf/\{name}/annotations/popup/\{annotationId} | Replace document popup annotation
*AsposePdfCloud::PdfApi* | [**put_privileges**](docs/PdfApi.md#put_privileges) | **PUT** /pdf/\{name}/privileges | Update privilege document.
*AsposePdfCloud::PdfApi* | [**put_ps_in_storage_to_pdf**](docs/PdfApi.md#put_ps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/ps | Convert PS file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_radio_button_field**](docs/PdfApi.md#put_radio_button_field) | **PUT** /pdf/\{name}/fields/radiobutton/\{fieldName} | Replace document RadioButton field
*AsposePdfCloud::PdfApi* | [**put_redaction_annotation**](docs/PdfApi.md#put_redaction_annotation) | **PUT** /pdf/\{name}/annotations/redaction/\{annotationId} | Replace document redaction annotation
*AsposePdfCloud::PdfApi* | [**put_replace_image**](docs/PdfApi.md#put_replace_image) | **PUT** /pdf/\{name}/images/\{imageId} | Replace document image.
*AsposePdfCloud::PdfApi* | [**put_screen_annotation**](docs/PdfApi.md#put_screen_annotation) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId} | Replace document screen annotation
*AsposePdfCloud::PdfApi* | [**put_screen_annotation_data_extract**](docs/PdfApi.md#put_screen_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/screen/\{annotationId}/data/extract | Extract document screen annotation content to storage
*AsposePdfCloud::PdfApi* | [**put_searchable_document**](docs/PdfApi.md#put_searchable_document) | **PUT** /pdf/\{name}/ocr | Create searchable PDF document. Generate OCR layer for images in input PDF document.
*AsposePdfCloud::PdfApi* | [**put_set_property**](docs/PdfApi.md#put_set_property) | **PUT** /pdf/\{name}/documentproperties/\{propertyName} | Add/update document property.
*AsposePdfCloud::PdfApi* | [**put_signature_field**](docs/PdfApi.md#put_signature_field) | **PUT** /pdf/\{name}/fields/signature/\{fieldName} | Replace document signature field.
*AsposePdfCloud::PdfApi* | [**put_sound_annotation**](docs/PdfApi.md#put_sound_annotation) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId} | Replace document sound annotation
*AsposePdfCloud::PdfApi* | [**put_sound_annotation_data_extract**](docs/PdfApi.md#put_sound_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/sound/\{annotationId}/data/extract | Extract document sound annotation content to storage
*AsposePdfCloud::PdfApi* | [**put_square_annotation**](docs/PdfApi.md#put_square_annotation) | **PUT** /pdf/\{name}/annotations/square/\{annotationId} | Replace document square annotation
*AsposePdfCloud::PdfApi* | [**put_squiggly_annotation**](docs/PdfApi.md#put_squiggly_annotation) | **PUT** /pdf/\{name}/annotations/squiggly/\{annotationId} | Replace document squiggly annotation
*AsposePdfCloud::PdfApi* | [**put_stamp_annotation**](docs/PdfApi.md#put_stamp_annotation) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId} | Replace document stamp annotation
*AsposePdfCloud::PdfApi* | [**put_stamp_annotation_data_extract**](docs/PdfApi.md#put_stamp_annotation_data_extract) | **PUT** /pdf/\{name}/annotations/stamp/\{annotationId}/data/extract | Extract document stamp annotation content to storage
*AsposePdfCloud::PdfApi* | [**put_strike_out_annotation**](docs/PdfApi.md#put_strike_out_annotation) | **PUT** /pdf/\{name}/annotations/strikeout/\{annotationId} | Replace document StrikeOut annotation
*AsposePdfCloud::PdfApi* | [**put_svg_in_storage_to_pdf**](docs/PdfApi.md#put_svg_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/svg | Convert SVG file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_table**](docs/PdfApi.md#put_table) | **PUT** /pdf/\{name}/tables/\{tableId} | Replace document page table.
*AsposePdfCloud::PdfApi* | [**put_te_x_in_storage_to_pdf**](docs/PdfApi.md#put_te_x_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/tex | Convert TeX file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_text_annotation**](docs/PdfApi.md#put_text_annotation) | **PUT** /pdf/\{name}/annotations/text/\{annotationId} | Replace document text annotation
*AsposePdfCloud::PdfApi* | [**put_text_box_field**](docs/PdfApi.md#put_text_box_field) | **PUT** /pdf/\{name}/fields/textbox/\{fieldName} | Replace document text box field
*AsposePdfCloud::PdfApi* | [**put_underline_annotation**](docs/PdfApi.md#put_underline_annotation) | **PUT** /pdf/\{name}/annotations/underline/\{annotationId} | Replace document underline annotation
*AsposePdfCloud::PdfApi* | [**put_update_field**](docs/PdfApi.md#put_update_field) | **PUT** /pdf/\{name}/fields/\{fieldName} | Update field.
*AsposePdfCloud::PdfApi* | [**put_update_fields**](docs/PdfApi.md#put_update_fields) | **PUT** /pdf/\{name}/fields | Update fields.
*AsposePdfCloud::PdfApi* | [**put_web_in_storage_to_pdf**](docs/PdfApi.md#put_web_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/web | Convert web page to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_xfa_pdf_in_request_to_acro_form**](docs/PdfApi.md#put_xfa_pdf_in_request_to_acro_form) | **PUT** /pdf/convert/xfatoacroform | Converts PDF document which contains XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_xfa_pdf_in_storage_to_acro_form**](docs/PdfApi.md#put_xfa_pdf_in_storage_to_acro_form) | **PUT** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contains XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
*AsposePdfCloud::PdfApi* | [**put_xml_in_storage_to_pdf**](docs/PdfApi.md#put_xml_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xml | Convert XML file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_xps_in_storage_to_pdf**](docs/PdfApi.md#put_xps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xps | Convert XPS file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**put_xsl_fo_in_storage_to_pdf**](docs/PdfApi.md#put_xsl_fo_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xslfo | Convert XslFo file (located on storage) to PDF format and upload resulting file to storage.
*AsposePdfCloud::PdfApi* | [**storage_exists**](docs/PdfApi.md#storage_exists) | **GET** /pdf/storage/\{storageName}/exist | Check if storage exists
*AsposePdfCloud::PdfApi* | [**upload_file**](docs/PdfApi.md#upload_file) | **PUT** /pdf/storage/file/\{path} | Upload file


## Documentation for Models

 - [AsposePdfCloud::AnnotationFlags](docs/AnnotationFlags.md)
 - [AsposePdfCloud::AnnotationState](docs/AnnotationState.md)
 - [AsposePdfCloud::AnnotationType](docs/AnnotationType.md)
 - [AsposePdfCloud::AntialiasingProcessingType](docs/AntialiasingProcessingType.md)
 - [AsposePdfCloud::ApiInfo](docs/ApiInfo.md)
 - [AsposePdfCloud::AsposeResponse](docs/AsposeResponse.md)
 - [AsposePdfCloud::Border](docs/Border.md)
 - [AsposePdfCloud::BorderCornerStyle](docs/BorderCornerStyle.md)
 - [AsposePdfCloud::BorderEffect](docs/BorderEffect.md)
 - [AsposePdfCloud::BorderInfo](docs/BorderInfo.md)
 - [AsposePdfCloud::BorderStyle](docs/BorderStyle.md)
 - [AsposePdfCloud::BoxStyle](docs/BoxStyle.md)
 - [AsposePdfCloud::CapStyle](docs/CapStyle.md)
 - [AsposePdfCloud::CaptionPosition](docs/CaptionPosition.md)
 - [AsposePdfCloud::CaretSymbol](docs/CaretSymbol.md)
 - [AsposePdfCloud::Cell](docs/Cell.md)
 - [AsposePdfCloud::CellRecognized](docs/CellRecognized.md)
 - [AsposePdfCloud::Color](docs/Color.md)
 - [AsposePdfCloud::ColorDepth](docs/ColorDepth.md)
 - [AsposePdfCloud::ColumnAdjustment](docs/ColumnAdjustment.md)
 - [AsposePdfCloud::CompressionType](docs/CompressionType.md)
 - [AsposePdfCloud::CryptoAlgorithm](docs/CryptoAlgorithm.md)
 - [AsposePdfCloud::Dash](docs/Dash.md)
 - [AsposePdfCloud::DefaultPageConfig](docs/DefaultPageConfig.md)
 - [AsposePdfCloud::Direction](docs/Direction.md)
 - [AsposePdfCloud::DiscUsage](docs/DiscUsage.md)
 - [AsposePdfCloud::DocFormat](docs/DocFormat.md)
 - [AsposePdfCloud::DocMDPAccessPermissionType](docs/DocMDPAccessPermissionType.md)
 - [AsposePdfCloud::DocRecognitionMode](docs/DocRecognitionMode.md)
 - [AsposePdfCloud::DocumentConfig](docs/DocumentConfig.md)
 - [AsposePdfCloud::DocumentPrivilege](docs/DocumentPrivilege.md)
 - [AsposePdfCloud::EpubRecognitionMode](docs/EpubRecognitionMode.md)
 - [AsposePdfCloud::Error](docs/Error.md)
 - [AsposePdfCloud::ErrorDetails](docs/ErrorDetails.md)
 - [AsposePdfCloud::FieldType](docs/FieldType.md)
 - [AsposePdfCloud::FileIcon](docs/FileIcon.md)
 - [AsposePdfCloud::FileVersions](docs/FileVersions.md)
 - [AsposePdfCloud::FilesList](docs/FilesList.md)
 - [AsposePdfCloud::FilesUploadResult](docs/FilesUploadResult.md)
 - [AsposePdfCloud::FontEncodingRules](docs/FontEncodingRules.md)
 - [AsposePdfCloud::FontSavingModes](docs/FontSavingModes.md)
 - [AsposePdfCloud::FontStyles](docs/FontStyles.md)
 - [AsposePdfCloud::FreeTextIntent](docs/FreeTextIntent.md)
 - [AsposePdfCloud::GraphInfo](docs/GraphInfo.md)
 - [AsposePdfCloud::HorizontalAlignment](docs/HorizontalAlignment.md)
 - [AsposePdfCloud::HtmlDocumentType](docs/HtmlDocumentType.md)
 - [AsposePdfCloud::HtmlMarkupGenerationModes](docs/HtmlMarkupGenerationModes.md)
 - [AsposePdfCloud::ImageCompressionVersion](docs/ImageCompressionVersion.md)
 - [AsposePdfCloud::ImageEncoding](docs/ImageEncoding.md)
 - [AsposePdfCloud::ImageFragment](docs/ImageFragment.md)
 - [AsposePdfCloud::ImageSrcType](docs/ImageSrcType.md)
 - [AsposePdfCloud::ImageTemplate](docs/ImageTemplate.md)
 - [AsposePdfCloud::ImageTemplatesRequest](docs/ImageTemplatesRequest.md)
 - [AsposePdfCloud::Justification](docs/Justification.md)
 - [AsposePdfCloud::LettersPositioningMethods](docs/LettersPositioningMethods.md)
 - [AsposePdfCloud::LineEnding](docs/LineEnding.md)
 - [AsposePdfCloud::LineIntent](docs/LineIntent.md)
 - [AsposePdfCloud::LineSpacing](docs/LineSpacing.md)
 - [AsposePdfCloud::Link](docs/Link.md)
 - [AsposePdfCloud::LinkActionType](docs/LinkActionType.md)
 - [AsposePdfCloud::LinkElement](docs/LinkElement.md)
 - [AsposePdfCloud::LinkHighlightingMode](docs/LinkHighlightingMode.md)
 - [AsposePdfCloud::MarginInfo](docs/MarginInfo.md)
 - [AsposePdfCloud::MergeDocuments](docs/MergeDocuments.md)
 - [AsposePdfCloud::ObjectExist](docs/ObjectExist.md)
 - [AsposePdfCloud::OptimizeOptions](docs/OptimizeOptions.md)
 - [AsposePdfCloud::Option](docs/Option.md)
 - [AsposePdfCloud::OutputFormat](docs/OutputFormat.md)
 - [AsposePdfCloud::PageLayout](docs/PageLayout.md)
 - [AsposePdfCloud::PageMode](docs/PageMode.md)
 - [AsposePdfCloud::PageWordCount](docs/PageWordCount.md)
 - [AsposePdfCloud::Paragraph](docs/Paragraph.md)
 - [AsposePdfCloud::PartsEmbeddingModes](docs/PartsEmbeddingModes.md)
 - [AsposePdfCloud::PdfAType](docs/PdfAType.md)
 - [AsposePdfCloud::PermissionsFlags](docs/PermissionsFlags.md)
 - [AsposePdfCloud::Point](docs/Point.md)
 - [AsposePdfCloud::PolyIntent](docs/PolyIntent.md)
 - [AsposePdfCloud::Position](docs/Position.md)
 - [AsposePdfCloud::RasterImagesSavingModes](docs/RasterImagesSavingModes.md)
 - [AsposePdfCloud::Rectangle](docs/Rectangle.md)
 - [AsposePdfCloud::Rotation](docs/Rotation.md)
 - [AsposePdfCloud::Row](docs/Row.md)
 - [AsposePdfCloud::RowRecognized](docs/RowRecognized.md)
 - [AsposePdfCloud::Segment](docs/Segment.md)
 - [AsposePdfCloud::ShapeType](docs/ShapeType.md)
 - [AsposePdfCloud::Signature](docs/Signature.md)
 - [AsposePdfCloud::SignatureCustomAppearance](docs/SignatureCustomAppearance.md)
 - [AsposePdfCloud::SignatureType](docs/SignatureType.md)
 - [AsposePdfCloud::SoundEncoding](docs/SoundEncoding.md)
 - [AsposePdfCloud::SoundIcon](docs/SoundIcon.md)
 - [AsposePdfCloud::SplitResult](docs/SplitResult.md)
 - [AsposePdfCloud::Stamp](docs/Stamp.md)
 - [AsposePdfCloud::StampIcon](docs/StampIcon.md)
 - [AsposePdfCloud::StampType](docs/StampType.md)
 - [AsposePdfCloud::StorageExist](docs/StorageExist.md)
 - [AsposePdfCloud::StorageFile](docs/StorageFile.md)
 - [AsposePdfCloud::TableBroken](docs/TableBroken.md)
 - [AsposePdfCloud::TextHorizontalAlignment](docs/TextHorizontalAlignment.md)
 - [AsposePdfCloud::TextIcon](docs/TextIcon.md)
 - [AsposePdfCloud::TextLine](docs/TextLine.md)
 - [AsposePdfCloud::TextRect](docs/TextRect.md)
 - [AsposePdfCloud::TextRects](docs/TextRects.md)
 - [AsposePdfCloud::TextReplace](docs/TextReplace.md)
 - [AsposePdfCloud::TextReplaceListRequest](docs/TextReplaceListRequest.md)
 - [AsposePdfCloud::TextState](docs/TextState.md)
 - [AsposePdfCloud::TextStyle](docs/TextStyle.md)
 - [AsposePdfCloud::TimestampSettings](docs/TimestampSettings.md)
 - [AsposePdfCloud::VerticalAlignment](docs/VerticalAlignment.md)
 - [AsposePdfCloud::WordCount](docs/WordCount.md)
 - [AsposePdfCloud::WrapMode](docs/WrapMode.md)
 - [AsposePdfCloud::Annotation](docs/Annotation.md)
 - [AsposePdfCloud::AnnotationsInfo](docs/AnnotationsInfo.md)
 - [AsposePdfCloud::AnnotationsInfoResponse](docs/AnnotationsInfoResponse.md)
 - [AsposePdfCloud::Attachment](docs/Attachment.md)
 - [AsposePdfCloud::AttachmentResponse](docs/AttachmentResponse.md)
 - [AsposePdfCloud::Attachments](docs/Attachments.md)
 - [AsposePdfCloud::AttachmentsResponse](docs/AttachmentsResponse.md)
 - [AsposePdfCloud::Bookmark](docs/Bookmark.md)
 - [AsposePdfCloud::BookmarkResponse](docs/BookmarkResponse.md)
 - [AsposePdfCloud::Bookmarks](docs/Bookmarks.md)
 - [AsposePdfCloud::BookmarksResponse](docs/BookmarksResponse.md)
 - [AsposePdfCloud::CaretAnnotationResponse](docs/CaretAnnotationResponse.md)
 - [AsposePdfCloud::CaretAnnotations](docs/CaretAnnotations.md)
 - [AsposePdfCloud::CaretAnnotationsResponse](docs/CaretAnnotationsResponse.md)
 - [AsposePdfCloud::CheckBoxFieldResponse](docs/CheckBoxFieldResponse.md)
 - [AsposePdfCloud::CheckBoxFields](docs/CheckBoxFields.md)
 - [AsposePdfCloud::CheckBoxFieldsResponse](docs/CheckBoxFieldsResponse.md)
 - [AsposePdfCloud::CircleAnnotationResponse](docs/CircleAnnotationResponse.md)
 - [AsposePdfCloud::CircleAnnotations](docs/CircleAnnotations.md)
 - [AsposePdfCloud::CircleAnnotationsResponse](docs/CircleAnnotationsResponse.md)
 - [AsposePdfCloud::ComboBoxFieldResponse](docs/ComboBoxFieldResponse.md)
 - [AsposePdfCloud::ComboBoxFields](docs/ComboBoxFields.md)
 - [AsposePdfCloud::ComboBoxFieldsResponse](docs/ComboBoxFieldsResponse.md)
 - [AsposePdfCloud::DisplayProperties](docs/DisplayProperties.md)
 - [AsposePdfCloud::DisplayPropertiesResponse](docs/DisplayPropertiesResponse.md)
 - [AsposePdfCloud::Document](docs/Document.md)
 - [AsposePdfCloud::DocumentPageResponse](docs/DocumentPageResponse.md)
 - [AsposePdfCloud::DocumentPagesResponse](docs/DocumentPagesResponse.md)
 - [AsposePdfCloud::DocumentProperties](docs/DocumentProperties.md)
 - [AsposePdfCloud::DocumentPropertiesResponse](docs/DocumentPropertiesResponse.md)
 - [AsposePdfCloud::DocumentProperty](docs/DocumentProperty.md)
 - [AsposePdfCloud::DocumentPropertyResponse](docs/DocumentPropertyResponse.md)
 - [AsposePdfCloud::DocumentResponse](docs/DocumentResponse.md)
 - [AsposePdfCloud::Field](docs/Field.md)
 - [AsposePdfCloud::FieldResponse](docs/FieldResponse.md)
 - [AsposePdfCloud::Fields](docs/Fields.md)
 - [AsposePdfCloud::FieldsResponse](docs/FieldsResponse.md)
 - [AsposePdfCloud::FileAttachmentAnnotationResponse](docs/FileAttachmentAnnotationResponse.md)
 - [AsposePdfCloud::FileAttachmentAnnotations](docs/FileAttachmentAnnotations.md)
 - [AsposePdfCloud::FileAttachmentAnnotationsResponse](docs/FileAttachmentAnnotationsResponse.md)
 - [AsposePdfCloud::FileVersion](docs/FileVersion.md)
 - [AsposePdfCloud::FormField](docs/FormField.md)
 - [AsposePdfCloud::FreeTextAnnotationResponse](docs/FreeTextAnnotationResponse.md)
 - [AsposePdfCloud::FreeTextAnnotations](docs/FreeTextAnnotations.md)
 - [AsposePdfCloud::FreeTextAnnotationsResponse](docs/FreeTextAnnotationsResponse.md)
 - [AsposePdfCloud::HighlightAnnotationResponse](docs/HighlightAnnotationResponse.md)
 - [AsposePdfCloud::HighlightAnnotations](docs/HighlightAnnotations.md)
 - [AsposePdfCloud::HighlightAnnotationsResponse](docs/HighlightAnnotationsResponse.md)
 - [AsposePdfCloud::Image](docs/Image.md)
 - [AsposePdfCloud::ImageResponse](docs/ImageResponse.md)
 - [AsposePdfCloud::Images](docs/Images.md)
 - [AsposePdfCloud::ImagesResponse](docs/ImagesResponse.md)
 - [AsposePdfCloud::InkAnnotationResponse](docs/InkAnnotationResponse.md)
 - [AsposePdfCloud::InkAnnotations](docs/InkAnnotations.md)
 - [AsposePdfCloud::InkAnnotationsResponse](docs/InkAnnotationsResponse.md)
 - [AsposePdfCloud::LineAnnotationResponse](docs/LineAnnotationResponse.md)
 - [AsposePdfCloud::LineAnnotations](docs/LineAnnotations.md)
 - [AsposePdfCloud::LineAnnotationsResponse](docs/LineAnnotationsResponse.md)
 - [AsposePdfCloud::LinkAnnotation](docs/LinkAnnotation.md)
 - [AsposePdfCloud::LinkAnnotationResponse](docs/LinkAnnotationResponse.md)
 - [AsposePdfCloud::LinkAnnotations](docs/LinkAnnotations.md)
 - [AsposePdfCloud::LinkAnnotationsResponse](docs/LinkAnnotationsResponse.md)
 - [AsposePdfCloud::ListBoxFieldResponse](docs/ListBoxFieldResponse.md)
 - [AsposePdfCloud::ListBoxFields](docs/ListBoxFields.md)
 - [AsposePdfCloud::ListBoxFieldsResponse](docs/ListBoxFieldsResponse.md)
 - [AsposePdfCloud::MovieAnnotationResponse](docs/MovieAnnotationResponse.md)
 - [AsposePdfCloud::MovieAnnotations](docs/MovieAnnotations.md)
 - [AsposePdfCloud::MovieAnnotationsResponse](docs/MovieAnnotationsResponse.md)
 - [AsposePdfCloud::Page](docs/Page.md)
 - [AsposePdfCloud::Pages](docs/Pages.md)
 - [AsposePdfCloud::PolyLineAnnotationResponse](docs/PolyLineAnnotationResponse.md)
 - [AsposePdfCloud::PolyLineAnnotations](docs/PolyLineAnnotations.md)
 - [AsposePdfCloud::PolyLineAnnotationsResponse](docs/PolyLineAnnotationsResponse.md)
 - [AsposePdfCloud::PolygonAnnotationResponse](docs/PolygonAnnotationResponse.md)
 - [AsposePdfCloud::PolygonAnnotations](docs/PolygonAnnotations.md)
 - [AsposePdfCloud::PolygonAnnotationsResponse](docs/PolygonAnnotationsResponse.md)
 - [AsposePdfCloud::PopupAnnotationResponse](docs/PopupAnnotationResponse.md)
 - [AsposePdfCloud::PopupAnnotations](docs/PopupAnnotations.md)
 - [AsposePdfCloud::PopupAnnotationsResponse](docs/PopupAnnotationsResponse.md)
 - [AsposePdfCloud::RadioButtonFieldResponse](docs/RadioButtonFieldResponse.md)
 - [AsposePdfCloud::RadioButtonFields](docs/RadioButtonFields.md)
 - [AsposePdfCloud::RadioButtonFieldsResponse](docs/RadioButtonFieldsResponse.md)
 - [AsposePdfCloud::RedactionAnnotationResponse](docs/RedactionAnnotationResponse.md)
 - [AsposePdfCloud::RedactionAnnotations](docs/RedactionAnnotations.md)
 - [AsposePdfCloud::RedactionAnnotationsResponse](docs/RedactionAnnotationsResponse.md)
 - [AsposePdfCloud::ScreenAnnotationResponse](docs/ScreenAnnotationResponse.md)
 - [AsposePdfCloud::ScreenAnnotations](docs/ScreenAnnotations.md)
 - [AsposePdfCloud::ScreenAnnotationsResponse](docs/ScreenAnnotationsResponse.md)
 - [AsposePdfCloud::SignatureFieldResponse](docs/SignatureFieldResponse.md)
 - [AsposePdfCloud::SignatureFields](docs/SignatureFields.md)
 - [AsposePdfCloud::SignatureFieldsResponse](docs/SignatureFieldsResponse.md)
 - [AsposePdfCloud::SignatureVerifyResponse](docs/SignatureVerifyResponse.md)
 - [AsposePdfCloud::SoundAnnotationResponse](docs/SoundAnnotationResponse.md)
 - [AsposePdfCloud::SoundAnnotations](docs/SoundAnnotations.md)
 - [AsposePdfCloud::SoundAnnotationsResponse](docs/SoundAnnotationsResponse.md)
 - [AsposePdfCloud::SplitResultDocument](docs/SplitResultDocument.md)
 - [AsposePdfCloud::SplitResultResponse](docs/SplitResultResponse.md)
 - [AsposePdfCloud::SquareAnnotationResponse](docs/SquareAnnotationResponse.md)
 - [AsposePdfCloud::SquareAnnotations](docs/SquareAnnotations.md)
 - [AsposePdfCloud::SquareAnnotationsResponse](docs/SquareAnnotationsResponse.md)
 - [AsposePdfCloud::SquigglyAnnotationResponse](docs/SquigglyAnnotationResponse.md)
 - [AsposePdfCloud::SquigglyAnnotations](docs/SquigglyAnnotations.md)
 - [AsposePdfCloud::SquigglyAnnotationsResponse](docs/SquigglyAnnotationsResponse.md)
 - [AsposePdfCloud::StampAnnotationResponse](docs/StampAnnotationResponse.md)
 - [AsposePdfCloud::StampAnnotations](docs/StampAnnotations.md)
 - [AsposePdfCloud::StampAnnotationsResponse](docs/StampAnnotationsResponse.md)
 - [AsposePdfCloud::StampBase](docs/StampBase.md)
 - [AsposePdfCloud::StampInfo](docs/StampInfo.md)
 - [AsposePdfCloud::StampsInfo](docs/StampsInfo.md)
 - [AsposePdfCloud::StampsInfoResponse](docs/StampsInfoResponse.md)
 - [AsposePdfCloud::StrikeOutAnnotationResponse](docs/StrikeOutAnnotationResponse.md)
 - [AsposePdfCloud::StrikeOutAnnotations](docs/StrikeOutAnnotations.md)
 - [AsposePdfCloud::StrikeOutAnnotationsResponse](docs/StrikeOutAnnotationsResponse.md)
 - [AsposePdfCloud::Table](docs/Table.md)
 - [AsposePdfCloud::TableRecognized](docs/TableRecognized.md)
 - [AsposePdfCloud::TableRecognizedResponse](docs/TableRecognizedResponse.md)
 - [AsposePdfCloud::TablesRecognized](docs/TablesRecognized.md)
 - [AsposePdfCloud::TablesRecognizedResponse](docs/TablesRecognizedResponse.md)
 - [AsposePdfCloud::TextAnnotationResponse](docs/TextAnnotationResponse.md)
 - [AsposePdfCloud::TextAnnotations](docs/TextAnnotations.md)
 - [AsposePdfCloud::TextAnnotationsResponse](docs/TextAnnotationsResponse.md)
 - [AsposePdfCloud::TextBoxFieldResponse](docs/TextBoxFieldResponse.md)
 - [AsposePdfCloud::TextBoxFields](docs/TextBoxFields.md)
 - [AsposePdfCloud::TextBoxFieldsResponse](docs/TextBoxFieldsResponse.md)
 - [AsposePdfCloud::TextRectsResponse](docs/TextRectsResponse.md)
 - [AsposePdfCloud::TextReplaceResponse](docs/TextReplaceResponse.md)
 - [AsposePdfCloud::UnderlineAnnotationResponse](docs/UnderlineAnnotationResponse.md)
 - [AsposePdfCloud::UnderlineAnnotations](docs/UnderlineAnnotations.md)
 - [AsposePdfCloud::UnderlineAnnotationsResponse](docs/UnderlineAnnotationsResponse.md)
 - [AsposePdfCloud::WordCountResponse](docs/WordCountResponse.md)
 - [AsposePdfCloud::AnnotationInfo](docs/AnnotationInfo.md)
 - [AsposePdfCloud::CheckBoxField](docs/CheckBoxField.md)
 - [AsposePdfCloud::ChoiceField](docs/ChoiceField.md)
 - [AsposePdfCloud::ImageFooter](docs/ImageFooter.md)
 - [AsposePdfCloud::ImageHeader](docs/ImageHeader.md)
 - [AsposePdfCloud::ImageStamp](docs/ImageStamp.md)
 - [AsposePdfCloud::MarkupAnnotation](docs/MarkupAnnotation.md)
 - [AsposePdfCloud::MovieAnnotation](docs/MovieAnnotation.md)
 - [AsposePdfCloud::PageNumberStamp](docs/PageNumberStamp.md)
 - [AsposePdfCloud::PdfPageStamp](docs/PdfPageStamp.md)
 - [AsposePdfCloud::PopupAnnotation](docs/PopupAnnotation.md)
 - [AsposePdfCloud::RadioButtonOptionField](docs/RadioButtonOptionField.md)
 - [AsposePdfCloud::RedactionAnnotation](docs/RedactionAnnotation.md)
 - [AsposePdfCloud::ScreenAnnotation](docs/ScreenAnnotation.md)
 - [AsposePdfCloud::SignatureField](docs/SignatureField.md)
 - [AsposePdfCloud::TextBoxField](docs/TextBoxField.md)
 - [AsposePdfCloud::TextFooter](docs/TextFooter.md)
 - [AsposePdfCloud::TextHeader](docs/TextHeader.md)
 - [AsposePdfCloud::TextStamp](docs/TextStamp.md)
 - [AsposePdfCloud::CaretAnnotation](docs/CaretAnnotation.md)
 - [AsposePdfCloud::ComboBoxField](docs/ComboBoxField.md)
 - [AsposePdfCloud::CommonFigureAnnotation](docs/CommonFigureAnnotation.md)
 - [AsposePdfCloud::FileAttachmentAnnotation](docs/FileAttachmentAnnotation.md)
 - [AsposePdfCloud::FreeTextAnnotation](docs/FreeTextAnnotation.md)
 - [AsposePdfCloud::HighlightAnnotation](docs/HighlightAnnotation.md)
 - [AsposePdfCloud::InkAnnotation](docs/InkAnnotation.md)
 - [AsposePdfCloud::LineAnnotation](docs/LineAnnotation.md)
 - [AsposePdfCloud::ListBoxField](docs/ListBoxField.md)
 - [AsposePdfCloud::PolyAnnotation](docs/PolyAnnotation.md)
 - [AsposePdfCloud::PopupAnnotationWithParent](docs/PopupAnnotationWithParent.md)
 - [AsposePdfCloud::RadioButtonField](docs/RadioButtonField.md)
 - [AsposePdfCloud::SoundAnnotation](docs/SoundAnnotation.md)
 - [AsposePdfCloud::SquigglyAnnotation](docs/SquigglyAnnotation.md)
 - [AsposePdfCloud::StampAnnotation](docs/StampAnnotation.md)
 - [AsposePdfCloud::StrikeOutAnnotation](docs/StrikeOutAnnotation.md)
 - [AsposePdfCloud::TextAnnotation](docs/TextAnnotation.md)
 - [AsposePdfCloud::UnderlineAnnotation](docs/UnderlineAnnotation.md)
 - [AsposePdfCloud::CircleAnnotation](docs/CircleAnnotation.md)
 - [AsposePdfCloud::PolyLineAnnotation](docs/PolyLineAnnotation.md)
 - [AsposePdfCloud::PolygonAnnotation](docs/PolygonAnnotation.md)
 - [AsposePdfCloud::SquareAnnotation](docs/SquareAnnotation.md)



 ## Aspose.PDF Cloud SDKs in Popular Languages

 | .NET | Java | PHP | Python | Ruby | Node.js | Android | Swift|Go|
 |---|---|---|---|---|---|---|--|--|
 | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-dotnet) | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-java) | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-php) | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-python) | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby)  | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-node.js) | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-android) | [GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-swift)|[GitHub](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-go) |
 | [NuGet](https://www.nuget.org/packages/Aspose.pdf-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-pdf-cloud) | [Composer](https://packagist.org/packages/aspose/pdf-sdk-php) | [PIP](https://pypi.org/project/asposepdfcloud/) | [GEM](https://rubygems.org/gems/aspose_pdf_cloud)  | [NPM](https://www.npmjs.com/package/asposepdfcloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-pdf-cloud) | [Cocoapods](https://cocoapods.org/pods/AsposepdfCloud)|[Go.Dev](https://pkg.go.dev/github.com/aspose-pdf-cloud/aspose-pdf-cloud-go/v20#readme-aspose-pdf-cloud) |

 [Product Page](https://products.aspose.cloud/pdf/ruby) | [Documentation](https://docs.aspose.cloud/display/pdfcloud/Home) | [API Reference](https://apireference.aspose.cloud/pdf/) | [Code Samples](https://github.com/aspose-pdf-cloud/aspose-pdf-cloud-ruby) | [Blog](https://blog.aspose.cloud/category/pdf/) | [Free Support](https://forum.aspose.cloud/c/pdf) | [Free Trial](https://dashboard.aspose.cloud/#/apps)
