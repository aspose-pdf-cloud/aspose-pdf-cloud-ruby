# AsposePdfCloud::PdfApi

All URIs are relative to *https://api.aspose.cloud/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_annotation**](PdfApi.md#delete_annotation) | **DELETE** /pdf/\{name}/annotations/\{annotationId} | Delete document annotation by ID
[**delete_document_annotations**](PdfApi.md#delete_document_annotations) | **DELETE** /pdf/\{name}/annotations | Delete all annotations from the document
[**delete_document_link_annotations**](PdfApi.md#delete_document_link_annotations) | **DELETE** /pdf/\{name}/links | Delete all link annotations from the document
[**delete_field**](PdfApi.md#delete_field) | **DELETE** /pdf/\{name}/fields/\{fieldName} | Delete document field by name.
[**delete_image**](PdfApi.md#delete_image) | **DELETE** /pdf/\{name}/images/\{imageId} | Delete image from document page.
[**delete_link_annotation**](PdfApi.md#delete_link_annotation) | **DELETE** /pdf/\{name}/links/\{linkId} | Delete document page link annotation by ID
[**delete_page**](PdfApi.md#delete_page) | **DELETE** /pdf/\{name}/pages/\{pageNumber} | Delete document page by its number.
[**delete_page_annotations**](PdfApi.md#delete_page_annotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/annotations | Delete all annotations from the page
[**delete_page_link_annotations**](PdfApi.md#delete_page_link_annotations) | **DELETE** /pdf/\{name}/pages/\{pageNumber}/links | Delete all link annotations from the page
[**delete_properties**](PdfApi.md#delete_properties) | **DELETE** /pdf/\{name}/documentproperties | Delete custom document properties.
[**delete_property**](PdfApi.md#delete_property) | **DELETE** /pdf/\{name}/documentproperties/\{propertyName} | Delete document property.
[**get_document**](PdfApi.md#get_document) | **GET** /pdf/\{name} | Read common document info.
[**get_document_annotations**](PdfApi.md#get_document_annotations) | **GET** /pdf/\{name}/annotations | Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
[**get_document_attachment_by_index**](PdfApi.md#get_document_attachment_by_index) | **GET** /pdf/\{name}/attachments/\{attachmentIndex} | Read document attachment info by its index.
[**get_document_attachments**](PdfApi.md#get_document_attachments) | **GET** /pdf/\{name}/attachments | Read document attachments info.
[**get_document_bookmarks**](PdfApi.md#get_document_bookmarks) | **GET** /pdf/\{name}/bookmarks | Read document bookmark/bookmarks (including children).
[**get_document_free_text_annotations**](PdfApi.md#get_document_free_text_annotations) | **GET** /pdf/\{name}/annotations/freetext | Read document free text annotations.
[**get_document_properties**](PdfApi.md#get_document_properties) | **GET** /pdf/\{name}/documentproperties | Read document properties.
[**get_document_property**](PdfApi.md#get_document_property) | **GET** /pdf/\{name}/documentproperties/\{propertyName} | Read document property by name.
[**get_document_text_annotations**](PdfApi.md#get_document_text_annotations) | **GET** /pdf/\{name}/annotations/text | Read document text annotations.
[**get_download**](PdfApi.md#get_download) | **GET** /storage/file | Download a specific file 
[**get_download_document_attachment_by_index**](PdfApi.md#get_download_document_attachment_by_index) | **GET** /pdf/\{name}/attachments/\{attachmentIndex}/download | Download document attachment content by its index.
[**get_epub_in_storage_to_pdf**](PdfApi.md#get_epub_in_storage_to_pdf) | **GET** /pdf/create/epub | Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
[**get_field**](PdfApi.md#get_field) | **GET** /pdf/\{name}/fields/\{fieldName} | Get document field by name.
[**get_fields**](PdfApi.md#get_fields) | **GET** /pdf/\{name}/fields | Get document fields.
[**get_free_text_annotation**](PdfApi.md#get_free_text_annotation) | **GET** /pdf/\{name}/annotations/freetext/\{annotationId} | Read document page free text annotation by ID.
[**get_html_in_storage_to_pdf**](PdfApi.md#get_html_in_storage_to_pdf) | **GET** /pdf/create/html | Convert HTML file (located on storage) to PDF format and return resulting file in response. 
[**get_image**](PdfApi.md#get_image) | **GET** /pdf/\{name}/images/\{imageId} | Read document image by ID.
[**get_image_extract_as_gif**](PdfApi.md#get_image_extract_as_gif) | **GET** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format
[**get_image_extract_as_jpeg**](PdfApi.md#get_image_extract_as_jpeg) | **GET** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format
[**get_image_extract_as_png**](PdfApi.md#get_image_extract_as_png) | **GET** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format
[**get_image_extract_as_tiff**](PdfApi.md#get_image_extract_as_tiff) | **GET** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format
[**get_images**](PdfApi.md#get_images) | **GET** /pdf/\{name}/pages/\{pageNumber}/images | Read document images.
[**get_la_te_x_in_storage_to_pdf**](PdfApi.md#get_la_te_x_in_storage_to_pdf) | **GET** /pdf/create/latex | Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
[**get_link_annotation**](PdfApi.md#get_link_annotation) | **GET** /pdf/\{name}/links/\{linkId} | Read document link annotation by ID.
[**get_mht_in_storage_to_pdf**](PdfApi.md#get_mht_in_storage_to_pdf) | **GET** /pdf/create/mht | Convert MHT file (located on storage) to PDF format and return resulting file in response. 
[**get_page**](PdfApi.md#get_page) | **GET** /pdf/\{name}/pages/\{pageNumber} | Read document page info.
[**get_page_annotations**](PdfApi.md#get_page_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations | Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
[**get_page_convert_to_bmp**](PdfApi.md#get_page_convert_to_bmp) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to Bmp image and return resulting file in response.
[**get_page_convert_to_emf**](PdfApi.md#get_page_convert_to_emf) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to Emf image and return resulting file in response.
[**get_page_convert_to_gif**](PdfApi.md#get_page_convert_to_gif) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to Gif image and return resulting file in response.
[**get_page_convert_to_jpeg**](PdfApi.md#get_page_convert_to_jpeg) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and return resulting file in response.
[**get_page_convert_to_png**](PdfApi.md#get_page_convert_to_png) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to Png image and return resulting file in response.
[**get_page_convert_to_tiff**](PdfApi.md#get_page_convert_to_tiff) | **GET** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image  and return resulting file in response.
[**get_page_free_text_annotations**](PdfApi.md#get_page_free_text_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Read document page free text annotations.
[**get_page_link_annotation**](PdfApi.md#get_page_link_annotation) | **GET** /pdf/\{name}/pages/\{pageNumber}/links/\{linkId} | Read document page link annotation by ID.
[**get_page_link_annotations**](PdfApi.md#get_page_link_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/links | Read document page link annotations.
[**get_page_text**](PdfApi.md#get_page_text) | **GET** /pdf/\{name}/pages/\{pageNumber}/text | Read page text items.
[**get_page_text_annotations**](PdfApi.md#get_page_text_annotations) | **GET** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Read document page text annotations.
[**get_pages**](PdfApi.md#get_pages) | **GET** /pdf/\{name}/pages | Read document pages info.
[**get_pcl_in_storage_to_pdf**](PdfApi.md#get_pcl_in_storage_to_pdf) | **GET** /pdf/create/pcl | Convert PCL file (located on storage) to PDF format and return resulting file in response. 
[**get_pdf_in_storage_to_doc**](PdfApi.md#get_pdf_in_storage_to_doc) | **GET** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and returns resulting file in response content
[**get_pdf_in_storage_to_epub**](PdfApi.md#get_pdf_in_storage_to_epub) | **GET** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
[**get_pdf_in_storage_to_html**](PdfApi.md#get_pdf_in_storage_to_html) | **GET** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and returns resulting file in response content
[**get_pdf_in_storage_to_la_te_x**](PdfApi.md#get_pdf_in_storage_to_la_te_x) | **GET** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
[**get_pdf_in_storage_to_mobi_xml**](PdfApi.md#get_pdf_in_storage_to_mobi_xml) | **GET** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
[**get_pdf_in_storage_to_pdf_a**](PdfApi.md#get_pdf_in_storage_to_pdf_a) | **GET** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
[**get_pdf_in_storage_to_pptx**](PdfApi.md#get_pdf_in_storage_to_pptx) | **GET** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
[**get_pdf_in_storage_to_svg**](PdfApi.md#get_pdf_in_storage_to_svg) | **GET** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and returns resulting file in response content
[**get_pdf_in_storage_to_tiff**](PdfApi.md#get_pdf_in_storage_to_tiff) | **GET** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
[**get_pdf_in_storage_to_xls**](PdfApi.md#get_pdf_in_storage_to_xls) | **GET** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and returns resulting file in response content
[**get_pdf_in_storage_to_xml**](PdfApi.md#get_pdf_in_storage_to_xml) | **GET** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and returns resulting file in response content
[**get_pdf_in_storage_to_xps**](PdfApi.md#get_pdf_in_storage_to_xps) | **GET** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and returns resulting file in response content
[**get_ps_in_storage_to_pdf**](PdfApi.md#get_ps_in_storage_to_pdf) | **GET** /pdf/create/ps | Convert PS file (located on storage) to PDF format and return resulting file in response. 
[**get_svg_in_storage_to_pdf**](PdfApi.md#get_svg_in_storage_to_pdf) | **GET** /pdf/create/svg | Convert SVG file (located on storage) to PDF format and return resulting file in response. 
[**get_text**](PdfApi.md#get_text) | **GET** /pdf/\{name}/text | Read document text.
[**get_text_annotation**](PdfApi.md#get_text_annotation) | **GET** /pdf/\{name}/annotations/text/\{annotationId} | Read document page text annotation by ID.
[**get_verify_signature**](PdfApi.md#get_verify_signature) | **GET** /pdf/\{name}/verifySignature | Verify signature document.
[**get_web_in_storage_to_pdf**](PdfApi.md#get_web_in_storage_to_pdf) | **GET** /pdf/create/web | Convert web page to PDF format and return resulting file in response. 
[**get_words_per_page**](PdfApi.md#get_words_per_page) | **GET** /pdf/\{name}/pages/wordCount | Get number of words per document page.
[**get_xfa_pdf_in_storage_to_acro_form**](PdfApi.md#get_xfa_pdf_in_storage_to_acro_form) | **GET** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
[**get_xml_in_storage_to_pdf**](PdfApi.md#get_xml_in_storage_to_pdf) | **GET** /pdf/create/xml | Convert XML file (located on storage) to PDF format and return resulting file in response. 
[**get_xps_in_storage_to_pdf**](PdfApi.md#get_xps_in_storage_to_pdf) | **GET** /pdf/create/xps | Convert XPS file (located on storage) to PDF format and return resulting file in response. 
[**get_xsl_fo_in_storage_to_pdf**](PdfApi.md#get_xsl_fo_in_storage_to_pdf) | **GET** /pdf/create/xslfo | Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
[**post_append_document**](PdfApi.md#post_append_document) | **POST** /pdf/\{name}/appendDocument | Append document to existing one.
[**post_create_field**](PdfApi.md#post_create_field) | **POST** /pdf/\{name}/fields | Create field.
[**post_document_text_replace**](PdfApi.md#post_document_text_replace) | **POST** /pdf/\{name}/text/replace | Document&#39;s replace text method.
[**post_insert_image**](PdfApi.md#post_insert_image) | **POST** /pdf/\{name}/pages/\{pageNumber}/images | Insert image to document page.
[**post_move_page**](PdfApi.md#post_move_page) | **POST** /pdf/\{name}/pages/\{pageNumber}/movePage | Move page to new position.
[**post_optimize_document**](PdfApi.md#post_optimize_document) | **POST** /pdf/\{name}/optimize | Optimize document.
[**post_page_free_text_annotations**](PdfApi.md#post_page_free_text_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/freetext | Add document page free text annotations.
[**post_page_link_annotations**](PdfApi.md#post_page_link_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/links | Add document page link annotations.
[**post_page_text_annotations**](PdfApi.md#post_page_text_annotations) | **POST** /pdf/\{name}/pages/\{pageNumber}/annotations/text | Add document page text annotations.
[**post_page_text_replace**](PdfApi.md#post_page_text_replace) | **POST** /pdf/\{name}/pages/\{pageNumber}/text/replace | Page&#39;s replace text method.
[**post_sign_document**](PdfApi.md#post_sign_document) | **POST** /pdf/\{name}/sign | Sign document.
[**post_sign_page**](PdfApi.md#post_sign_page) | **POST** /pdf/\{name}/pages/\{pageNumber}/sign | Sign page.
[**post_split_document**](PdfApi.md#post_split_document) | **POST** /pdf/\{name}/split | Split document to parts.
[**put_add_new_page**](PdfApi.md#put_add_new_page) | **PUT** /pdf/\{name}/pages | Add new page to end of the document.
[**put_add_text**](PdfApi.md#put_add_text) | **PUT** /pdf/\{name}/pages/\{pageNumber}/text | Add text to PDF document page.
[**put_create**](PdfApi.md#put_create) | **PUT** /storage/file | Upload a specific file 
[**put_create_document**](PdfApi.md#put_create_document) | **PUT** /pdf/\{name} | Create empty document.
[**put_epub_in_storage_to_pdf**](PdfApi.md#put_epub_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/epub | Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
[**put_fields_flatten**](PdfApi.md#put_fields_flatten) | **PUT** /pdf/\{name}/fields/flatten | Flatten form fields in document.
[**put_free_text_annotation**](PdfApi.md#put_free_text_annotation) | **PUT** /pdf/\{name}/annotations/freetext/\{annotationId} | Replace document free text annotation
[**put_html_in_storage_to_pdf**](PdfApi.md#put_html_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/html | Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
[**put_image_extract_as_gif**](PdfApi.md#put_image_extract_as_gif) | **PUT** /pdf/\{name}/images/\{imageId}/extract/gif | Extract document image in GIF format to folder
[**put_image_extract_as_jpeg**](PdfApi.md#put_image_extract_as_jpeg) | **PUT** /pdf/\{name}/images/\{imageId}/extract/jpeg | Extract document image in JPEG format to folder
[**put_image_extract_as_png**](PdfApi.md#put_image_extract_as_png) | **PUT** /pdf/\{name}/images/\{imageId}/extract/png | Extract document image in PNG format to folder
[**put_image_extract_as_tiff**](PdfApi.md#put_image_extract_as_tiff) | **PUT** /pdf/\{name}/images/\{imageId}/extract/tiff | Extract document image in TIFF format to folder
[**put_image_in_storage_to_pdf**](PdfApi.md#put_image_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/images | Convert image file (located on storage) to PDF format and upload resulting file to storage. 
[**put_images_extract_as_gif**](PdfApi.md#put_images_extract_as_gif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/gif | Extract document images in GIF format to folder.
[**put_images_extract_as_jpeg**](PdfApi.md#put_images_extract_as_jpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/jpeg | Extract document images in JPEG format to folder.
[**put_images_extract_as_png**](PdfApi.md#put_images_extract_as_png) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/png | Extract document images in PNG format to folder.
[**put_images_extract_as_tiff**](PdfApi.md#put_images_extract_as_tiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/images/extract/tiff | Extract document images in TIFF format to folder.
[**put_la_te_x_in_storage_to_pdf**](PdfApi.md#put_la_te_x_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/latex | Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
[**put_link_annotation**](PdfApi.md#put_link_annotation) | **PUT** /pdf/\{name}/links/\{linkId} | Replace document page link annotations
[**put_merge_documents**](PdfApi.md#put_merge_documents) | **PUT** /pdf/\{name}/merge | Merge a list of documents.
[**put_mht_in_storage_to_pdf**](PdfApi.md#put_mht_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/mht | Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
[**put_page_add_stamp**](PdfApi.md#put_page_add_stamp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/stamp | Add page stamp.
[**put_page_convert_to_bmp**](PdfApi.md#put_page_convert_to_bmp) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/bmp | Convert document page to bmp image and upload resulting file to storage.
[**put_page_convert_to_emf**](PdfApi.md#put_page_convert_to_emf) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/emf | Convert document page to emf image and upload resulting file to storage.
[**put_page_convert_to_gif**](PdfApi.md#put_page_convert_to_gif) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/gif | Convert document page to gif image and upload resulting file to storage.
[**put_page_convert_to_jpeg**](PdfApi.md#put_page_convert_to_jpeg) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/jpeg | Convert document page to Jpeg image and upload resulting file to storage.
[**put_page_convert_to_png**](PdfApi.md#put_page_convert_to_png) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/png | Convert document page to png image and upload resulting file to storage.
[**put_page_convert_to_tiff**](PdfApi.md#put_page_convert_to_tiff) | **PUT** /pdf/\{name}/pages/\{pageNumber}/convert/tiff | Convert document page to Tiff image and upload resulting file to storage.
[**put_pcl_in_storage_to_pdf**](PdfApi.md#put_pcl_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/pcl | Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
[**put_pdf_in_request_to_doc**](PdfApi.md#put_pdf_in_request_to_doc) | **PUT** /pdf/convert/doc | Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
[**put_pdf_in_request_to_epub**](PdfApi.md#put_pdf_in_request_to_epub) | **PUT** /pdf/convert/epub | Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
[**put_pdf_in_request_to_html**](PdfApi.md#put_pdf_in_request_to_html) | **PUT** /pdf/convert/html | Converts PDF document (in request content) to Html format and uploads resulting file to storage.
[**put_pdf_in_request_to_la_te_x**](PdfApi.md#put_pdf_in_request_to_la_te_x) | **PUT** /pdf/convert/latex | Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
[**put_pdf_in_request_to_mobi_xml**](PdfApi.md#put_pdf_in_request_to_mobi_xml) | **PUT** /pdf/convert/mobixml | Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
[**put_pdf_in_request_to_pdf_a**](PdfApi.md#put_pdf_in_request_to_pdf_a) | **PUT** /pdf/convert/pdfa | Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
[**put_pdf_in_request_to_pptx**](PdfApi.md#put_pdf_in_request_to_pptx) | **PUT** /pdf/convert/pptx | Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
[**put_pdf_in_request_to_svg**](PdfApi.md#put_pdf_in_request_to_svg) | **PUT** /pdf/convert/svg | Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
[**put_pdf_in_request_to_tiff**](PdfApi.md#put_pdf_in_request_to_tiff) | **PUT** /pdf/convert/tiff | Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
[**put_pdf_in_request_to_xls**](PdfApi.md#put_pdf_in_request_to_xls) | **PUT** /pdf/convert/xls | Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
[**put_pdf_in_request_to_xml**](PdfApi.md#put_pdf_in_request_to_xml) | **PUT** /pdf/convert/xml | Converts PDF document (in request content) to XML format and uploads resulting file to storage.
[**put_pdf_in_request_to_xps**](PdfApi.md#put_pdf_in_request_to_xps) | **PUT** /pdf/convert/xps | Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
[**put_pdf_in_storage_to_doc**](PdfApi.md#put_pdf_in_storage_to_doc) | **PUT** /pdf/\{name}/convert/doc | Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
[**put_pdf_in_storage_to_epub**](PdfApi.md#put_pdf_in_storage_to_epub) | **PUT** /pdf/\{name}/convert/epub | Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
[**put_pdf_in_storage_to_html**](PdfApi.md#put_pdf_in_storage_to_html) | **PUT** /pdf/\{name}/convert/html | Converts PDF document (located on storage) to Html format and uploads resulting file to storage
[**put_pdf_in_storage_to_la_te_x**](PdfApi.md#put_pdf_in_storage_to_la_te_x) | **PUT** /pdf/\{name}/convert/latex | Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
[**put_pdf_in_storage_to_mobi_xml**](PdfApi.md#put_pdf_in_storage_to_mobi_xml) | **PUT** /pdf/\{name}/convert/mobixml | Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
[**put_pdf_in_storage_to_pdf_a**](PdfApi.md#put_pdf_in_storage_to_pdf_a) | **PUT** /pdf/\{name}/convert/pdfa | Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
[**put_pdf_in_storage_to_pptx**](PdfApi.md#put_pdf_in_storage_to_pptx) | **PUT** /pdf/\{name}/convert/pptx | Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
[**put_pdf_in_storage_to_svg**](PdfApi.md#put_pdf_in_storage_to_svg) | **PUT** /pdf/\{name}/convert/svg | Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
[**put_pdf_in_storage_to_tiff**](PdfApi.md#put_pdf_in_storage_to_tiff) | **PUT** /pdf/\{name}/convert/tiff | Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
[**put_pdf_in_storage_to_xls**](PdfApi.md#put_pdf_in_storage_to_xls) | **PUT** /pdf/\{name}/convert/xls | Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
[**put_pdf_in_storage_to_xml**](PdfApi.md#put_pdf_in_storage_to_xml) | **PUT** /pdf/\{name}/convert/xml | Converts PDF document (located on storage) to XML format and uploads resulting file to storage
[**put_pdf_in_storage_to_xps**](PdfApi.md#put_pdf_in_storage_to_xps) | **PUT** /pdf/\{name}/convert/xps | Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
[**put_privileges**](PdfApi.md#put_privileges) | **PUT** /pdf/\{name}/privileges | Update privilege document.
[**put_ps_in_storage_to_pdf**](PdfApi.md#put_ps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/ps | Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
[**put_replace_image**](PdfApi.md#put_replace_image) | **PUT** /pdf/\{name}/images/\{imageId} | Replace document image.
[**put_searchable_document**](PdfApi.md#put_searchable_document) | **PUT** /pdf/\{name}/ocr | Create searchable PDF document. Generate OCR layer for images in input PDF document.
[**put_set_property**](PdfApi.md#put_set_property) | **PUT** /pdf/\{name}/documentproperties/\{propertyName} | Add/update document property.
[**put_svg_in_storage_to_pdf**](PdfApi.md#put_svg_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/svg | Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
[**put_text_annotation**](PdfApi.md#put_text_annotation) | **PUT** /pdf/\{name}/annotations/text/\{annotationId} | Replace document text annotation
[**put_update_field**](PdfApi.md#put_update_field) | **PUT** /pdf/\{name}/fields/\{fieldName} | Update field.
[**put_update_fields**](PdfApi.md#put_update_fields) | **PUT** /pdf/\{name}/fields | Update fields.
[**put_web_in_storage_to_pdf**](PdfApi.md#put_web_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/web | Convert web page to PDF format and upload resulting file to storage. 
[**put_xfa_pdf_in_request_to_acro_form**](PdfApi.md#put_xfa_pdf_in_request_to_acro_form) | **PUT** /pdf/convert/xfatoacroform | Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
[**put_xfa_pdf_in_storage_to_acro_form**](PdfApi.md#put_xfa_pdf_in_storage_to_acro_form) | **PUT** /pdf/\{name}/convert/xfatoacroform | Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
[**put_xml_in_storage_to_pdf**](PdfApi.md#put_xml_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xml | Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
[**put_xps_in_storage_to_pdf**](PdfApi.md#put_xps_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xps | Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
[**put_xsl_fo_in_storage_to_pdf**](PdfApi.md#put_xsl_fo_in_storage_to_pdf) | **PUT** /pdf/\{name}/create/xslfo | Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 


# **delete_annotation**
> AsposeResponse delete_annotation(name, annotation_id, opts)

Delete document annotation by ID

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

annotation_id = "annotation_id_example" # String | The annotation ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete document annotation by ID
  result = api_instance.delete_annotation(name, annotation_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_annotations**
> AsposeResponse delete_document_annotations(name, opts)

Delete all annotations from the document

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete all annotations from the document
  result = api_instance.delete_document_annotations(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_document_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_document_link_annotations**
> AsposeResponse delete_document_link_annotations(name, opts)

Delete all link annotations from the document

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete all link annotations from the document
  result = api_instance.delete_document_link_annotations(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_document_link_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_field**
> AsposeResponse delete_field(name, field_name, opts)

Delete document field by name.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

field_name = "field_name_example" # String | The field name/

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete document field by name.
  result = api_instance.delete_field(name, field_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name/ | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_image**
> AsposeResponse delete_image(name, image_id, opts)

Delete image from document page.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete image from document page.
  result = api_instance.delete_image(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_link_annotation**
> AsposeResponse delete_link_annotation(name, link_id, opts)

Delete document page link annotation by ID

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

link_id = "link_id_example" # String | The link ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete document page link annotation by ID
  result = api_instance.delete_link_annotation(name, link_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_link_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **link_id** | **String**| The link ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page**
> AsposeResponse delete_page(name, page_number, opts)

Delete document page by its number.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete document page by its number.
  result = api_instance.delete_page(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_annotations**
> AsposeResponse delete_page_annotations(name, page_number, opts)

Delete all annotations from the page

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete all annotations from the page
  result = api_instance.delete_page_annotations(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_page_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_link_annotations**
> AsposeResponse delete_page_link_annotations(name, page_number, opts)

Delete all link annotations from the page

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Delete all link annotations from the page
  result = api_instance.delete_page_link_annotations(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_page_link_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_properties**
> AsposeResponse delete_properties(name, opts)

Delete custom document properties.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Delete custom document properties.
  result = api_instance.delete_properties(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_property**
> AsposeResponse delete_property(name, property_name, opts)

Delete document property.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

property_name = "property_name_example" # String | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Delete document property.
  result = api_instance.delete_property(name, property_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->delete_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **property_name** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document**
> DocumentResponse get_document(name, opts)

Read common document info.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read common document info.
  result = api_instance.get_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_document_annotations**
> AnnotationsInfoResponse get_document_annotations(name, opts)

Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
  result = api_instance.get_document_annotations(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AnnotationsInfoResponse**](AnnotationsInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_attachment_by_index**
> AttachmentResponse get_document_attachment_by_index(name, attachment_index, opts)

Read document attachment info by its index.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

attachment_index = 56 # Integer | The attachment index.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document attachment info by its index.
  result = api_instance.get_document_attachment_by_index(name, attachment_index, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_attachment_by_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **attachment_index** | **Integer**| The attachment index. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AttachmentResponse**](AttachmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_attachments**
> AttachmentsResponse get_document_attachments(name, opts)

Read document attachments info.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document attachments info.
  result = api_instance.get_document_attachments(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AttachmentsResponse**](AttachmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_bookmarks**
> File get_document_bookmarks(name, opts)

Read document bookmark/bookmarks (including children).

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  bookmark_path: "bookmark_path_example", # String | The bookmark path. Leave it empty if you want to get all the bookmarks in the document.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document bookmark/bookmarks (including children).
  result = api_instance.get_document_bookmarks(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_bookmarks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **bookmark_path** | **String**| The bookmark path. Leave it empty if you want to get all the bookmarks in the document. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_document_free_text_annotations**
> FreeTextAnnotationsResponse get_document_free_text_annotations(name, opts)

Read document free text annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document free text annotations.
  result = api_instance.get_document_free_text_annotations(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_free_text_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationsResponse**](FreeTextAnnotationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_properties**
> DocumentPropertiesResponse get_document_properties(name, opts)

Read document properties.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Read document properties.
  result = api_instance.get_document_properties(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**DocumentPropertiesResponse**](DocumentPropertiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_property**
> DocumentPropertyResponse get_document_property(name, property_name, opts)

Read document property by name.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

property_name = "property_name_example" # String | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Read document property by name.
  result = api_instance.get_document_property(name, property_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **property_name** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document_text_annotations**
> TextAnnotationsResponse get_document_text_annotations(name, opts)

Read document text annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document text annotations.
  result = api_instance.get_document_text_annotations(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_document_text_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationsResponse**](TextAnnotationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_download**
> File get_download(path, opts)

Download a specific file 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

path = "path_example" # String | Path of the file including the file name and extension e.g. /file.ext

opts = { 
  version_id: "version_id_example", # String | File's version
  storage: "storage_example" # String | User's storage name
}

begin
  #Download a specific file 
  result = api_instance.get_download(path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path of the file including the file name and extension e.g. /file.ext | 
 **version_id** | **String**| File&#39;s version | [optional] 
 **storage** | **String**| User&#39;s storage name | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_download_document_attachment_by_index**
> File get_download_document_attachment_by_index(name, attachment_index, opts)

Download document attachment content by its index.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

attachment_index = 56 # Integer | The attachment index.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Download document attachment content by its index.
  result = api_instance.get_download_document_attachment_by_index(name, attachment_index, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_download_document_attachment_by_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **attachment_index** | **Integer**| The attachment index. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_epub_in_storage_to_pdf**
> File get_epub_in_storage_to_pdf(src_path, opts)

Convert EPUB file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.epub)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert EPUB file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_epub_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_epub_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.epub) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_field**
> FieldResponse get_field(name, field_name, opts)

Get document field by name.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

field_name = "field_name_example" # String | The field name/

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Get document field by name.
  result = api_instance.get_field(name, field_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The field name/ | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldResponse**](FieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_fields**
> FieldsResponse get_fields(name, opts)

Get document fields.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Get document fields.
  result = api_instance.get_fields(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldsResponse**](FieldsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_free_text_annotation**
> FreeTextAnnotationResponse get_free_text_annotation(name, annotation_id, opts)

Read document page free text annotation by ID.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

annotation_id = "annotation_id_example" # String | The annotation ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page free text annotation by ID.
  result = api_instance.get_free_text_annotation(name, annotation_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_free_text_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationResponse**](FreeTextAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_html_in_storage_to_pdf**
> File get_html_in_storage_to_pdf(src_path, html_file_name, opts)

Convert HTML file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.zip)

html_file_name = "html_file_name_example" # String | Name of HTML file in ZIP.

opts = { 
  height: 1.2, # Float | Page height
  width: 1.2, # Float | Page width
  is_landscape: true, # BOOLEAN | Is page landscaped
  margin_left: 1.2, # Float | Page margin left
  margin_bottom: 1.2, # Float | Page margin bottom
  margin_right: 1.2, # Float | Page margin right
  margin_top: 1.2, # Float | Page margin top
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert HTML file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_html_in_storage_to_pdf(src_path, html_file_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_html_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.zip) | 
 **html_file_name** | **String**| Name of HTML file in ZIP. | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_image**
> ImageResponse get_image(name, image_id, opts)

Read document image by ID.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document image by ID.
  result = api_instance.get_image(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ImageResponse**](ImageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_extract_as_gif**
> File get_image_extract_as_gif(name, image_id, opts)

Extract document image in GIF format

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Extract document image in GIF format
  result = api_instance.get_image_extract_as_gif(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_image_extract_as_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_extract_as_jpeg**
> File get_image_extract_as_jpeg(name, image_id, opts)

Extract document image in JPEG format

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Extract document image in JPEG format
  result = api_instance.get_image_extract_as_jpeg(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_image_extract_as_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_extract_as_png**
> File get_image_extract_as_png(name, image_id, opts)

Extract document image in PNG format

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Extract document image in PNG format
  result = api_instance.get_image_extract_as_png(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_image_extract_as_png: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_extract_as_tiff**
> File get_image_extract_as_tiff(name, image_id, opts)

Extract document image in TIFF format

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Extract document image in TIFF format
  result = api_instance.get_image_extract_as_tiff(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_image_extract_as_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_images**
> ImagesResponse get_images(name, page_number, opts)

Read document images.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document images.
  result = api_instance.get_images(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**ImagesResponse**](ImagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_la_te_x_in_storage_to_pdf**
> File get_la_te_x_in_storage_to_pdf(src_path, opts)

Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.tex)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert LaTeX file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_la_te_x_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_la_te_x_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.tex) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_link_annotation**
> LinkAnnotationResponse get_link_annotation(name, link_id, opts)

Read document link annotation by ID.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

link_id = "link_id_example" # String | The link ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document link annotation by ID.
  result = api_instance.get_link_annotation(name, link_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_link_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **link_id** | **String**| The link ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mht_in_storage_to_pdf**
> File get_mht_in_storage_to_pdf(src_path, opts)

Convert MHT file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.mht)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert MHT file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_mht_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_mht_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.mht) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_page**
> DocumentPageResponse get_page(name, page_number, opts)

Read document page info.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page info.
  result = api_instance.get_page(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentPageResponse**](DocumentPageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_annotations**
> AnnotationsInfoResponse get_page_annotations(name, page_number, opts)

Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read documant page annotations. Returns only FreeTextAnnotations, TextAnnotations, other annotations will implemented next releases.
  result = api_instance.get_page_annotations(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AnnotationsInfoResponse**](AnnotationsInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_bmp**
> File get_page_convert_to_bmp(name, page_number, opts)

Convert document page to Bmp image and return resulting file in response.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Bmp image and return resulting file in response.
  result = api_instance.get_page_convert_to_bmp(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_convert_to_bmp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_emf**
> File get_page_convert_to_emf(name, page_number, opts)

Convert document page to Emf image and return resulting file in response.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Emf image and return resulting file in response.
  result = api_instance.get_page_convert_to_emf(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_convert_to_emf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_gif**
> File get_page_convert_to_gif(name, page_number, opts)

Convert document page to Gif image and return resulting file in response.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Gif image and return resulting file in response.
  result = api_instance.get_page_convert_to_gif(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_convert_to_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_jpeg**
> File get_page_convert_to_jpeg(name, page_number, opts)

Convert document page to Jpeg image and return resulting file in response.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Jpeg image and return resulting file in response.
  result = api_instance.get_page_convert_to_jpeg(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_convert_to_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_png**
> File get_page_convert_to_png(name, page_number, opts)

Convert document page to Png image and return resulting file in response.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Png image and return resulting file in response.
  result = api_instance.get_page_convert_to_png(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_convert_to_png: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_convert_to_tiff**
> File get_page_convert_to_tiff(name, page_number, opts)

Convert document page to Tiff image  and return resulting file in response.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Tiff image  and return resulting file in response.
  result = api_instance.get_page_convert_to_tiff(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_convert_to_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_free_text_annotations**
> FreeTextAnnotationsResponse get_page_free_text_annotations(name, page_number, opts)

Read document page free text annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page free text annotations.
  result = api_instance.get_page_free_text_annotations(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_free_text_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationsResponse**](FreeTextAnnotationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_link_annotation**
> LinkAnnotationResponse get_page_link_annotation(name, page_number, link_id, opts)

Read document page link annotation by ID.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

link_id = "link_id_example" # String | The link ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page link annotation by ID.
  result = api_instance.get_page_link_annotation(name, page_number, link_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_link_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **link_id** | **String**| The link ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_link_annotations**
> LinkAnnotationsResponse get_page_link_annotations(name, page_number, opts)

Read document page link annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page link annotations.
  result = api_instance.get_page_link_annotations(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_link_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationsResponse**](LinkAnnotationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_text**
> TextRectsResponse get_page_text(name, page_number, llx, lly, urx, ury, opts)

Read page text items.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | Number of page (starting from 1).

llx = 1.2 # Float | 

lly = 1.2 # Float | 

urx = 1.2 # Float | 

ury = 1.2 # Float | 

opts = { 
  format: ["format_example"], # Array<String> | List of formats for search.
  regex: "regex_example", # String | Formats are specified as a regular expression.
  split_rects: true, # BOOLEAN | Split result fragments (default is true).
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Read page text items.
  result = api_instance.get_page_text(name, page_number, llx, lly, urx, ury, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| Number of page (starting from 1). | 
 **llx** | **Float**|  | 
 **lly** | **Float**|  | 
 **urx** | **Float**|  | 
 **ury** | **Float**|  | 
 **format** | [**Array&lt;String&gt;**](String.md)| List of formats for search. | [optional] 
 **regex** | **String**| Formats are specified as a regular expression. | [optional] 
 **split_rects** | **BOOLEAN**| Split result fragments (default is true). | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**TextRectsResponse**](TextRectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_page_text_annotations**
> TextAnnotationsResponse get_page_text_annotations(name, page_number, opts)

Read document page text annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page text annotations.
  result = api_instance.get_page_text_annotations(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_page_text_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationsResponse**](TextAnnotationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_pages**
> DocumentPagesResponse get_pages(name, opts)

Read document pages info.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document pages info.
  result = api_instance.get_pages(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentPagesResponse**](DocumentPagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_pcl_in_storage_to_pdf**
> File get_pcl_in_storage_to_pdf(src_path, opts)

Convert PCL file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.pcl)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert PCL file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_pcl_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pcl_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.pcl) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_doc**
> File get_pdf_in_storage_to_doc(name, opts)

Converts PDF document (located on storage) to DOC format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  add_return_to_line_end: true, # BOOLEAN | Add return to line end.
  format: "format_example", # String | Allows to specify .doc or .docx file format.
  image_resolution_x: 56, # Integer | Image resolution X.
  image_resolution_y: 56, # Integer | Image resolution Y.
  max_distance_between_text_lines: 1.2, # Float | Max distance between text lines.
  mode: "mode_example", # String | Allows to control how a PDF document is converted into a word processing document.
  recognize_bullets: true, # BOOLEAN | Recognize bullets.
  relative_horizontal_proximity: 1.2, # Float | Relative horizontal proximity.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to DOC format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_doc(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **add_return_to_line_end** | **BOOLEAN**| Add return to line end. | [optional] 
 **format** | **String**| Allows to specify .doc or .docx file format. | [optional] 
 **image_resolution_x** | **Integer**| Image resolution X. | [optional] 
 **image_resolution_y** | **Integer**| Image resolution Y. | [optional] 
 **max_distance_between_text_lines** | **Float**| Max distance between text lines. | [optional] 
 **mode** | **String**| Allows to control how a PDF document is converted into a word processing document. | [optional] 
 **recognize_bullets** | **BOOLEAN**| Recognize bullets. | [optional] 
 **relative_horizontal_proximity** | **Float**| Relative horizontal proximity. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_epub**
> File get_pdf_in_storage_to_epub(name, opts)

Converts PDF document (located on storage) to EPUB format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  content_recognition_mode: "content_recognition_mode_example", # String | ?roperty tunes conversion for this or that desirable method of recognition of content.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to EPUB format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_epub(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_epub: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **content_recognition_mode** | **String**| ?roperty tunes conversion for this or that desirable method of recognition of content. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_html**
> File get_pdf_in_storage_to_html(name, opts)

Converts PDF document (located on storage) to Html format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  additional_margin_width_in_points: 56, # Integer | Defines width of margin that will be forcibly left around that output HTML-areas.
  compress_svg_graphics_if_any: true, # BOOLEAN | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
  convert_marked_content_to_layers: true, # BOOLEAN | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \"data-pdflayer\" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
  default_font_name: "default_font_name_example", # String | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
  document_type: "document_type_example", # String | Result document type.
  fixed_layout: true, # BOOLEAN | The value indicating whether that HTML is created as fixed layout.
  image_resolution: 56, # Integer | Resolution for image rendering.
  minimal_line_width: 56, # Integer | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
  prevent_glyphs_grouping: true, # BOOLEAN | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
  split_css_into_pages: true, # BOOLEAN | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page.
  split_into_pages: true, # BOOLEAN | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
  use_z_order: true, # BOOLEAN | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
  antialiasing_processing: "antialiasing_processing_example", # String | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
  css_class_names_prefix: "css_class_names_prefix_example", # String | When PDFtoHTML converter generates result CSSs, CSS class names (something like \".stl_01 {}\" ... \".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
  explicit_list_of_saved_pages: [56], # Array<Integer> | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
  font_encoding_strategy: "font_encoding_strategy_example", # String | Defines encoding special rule to tune PDF decoding for current document.
  font_saving_mode: "font_saving_mode_example", # String | Defines font saving mode that will be used during saving of PDF to desirable format.
  html_markup_generation_mode: "html_markup_generation_mode_example", # String | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
  letters_positioning_method: "letters_positioning_method_example", # String | The mode of positioning of letters in words in result HTML.
  pages_flow_type_depends_on_viewers_screen_size: true, # BOOLEAN | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
  parts_embedding_mode: "parts_embedding_mode_example", # String | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
  raster_images_saving_mode: "raster_images_saving_mode_example", # String | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
  remove_empty_areas_on_top_and_bottom: true, # BOOLEAN | Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
  save_shadowed_texts_as_transparent_texts: true, # BOOLEAN | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
  save_transparent_texts: true, # BOOLEAN | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
  special_folder_for_all_images: "special_folder_for_all_images_example", # String | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
  special_folder_for_svg_images: "special_folder_for_svg_images_example", # String | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
  try_save_text_underlining_and_strikeouting_in_css: true, # BOOLEAN | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to Html format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_html(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **additional_margin_width_in_points** | **Integer**| Defines width of margin that will be forcibly left around that output HTML-areas. | [optional] 
 **compress_svg_graphics_if_any** | **BOOLEAN**| The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional] 
 **convert_marked_content_to_layers** | **BOOLEAN**| If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with &quot;data-pdflayer&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional] 
 **default_font_name** | **String**| Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional] 
 **document_type** | **String**| Result document type. | [optional] 
 **fixed_layout** | **BOOLEAN**| The value indicating whether that HTML is created as fixed layout. | [optional] 
 **image_resolution** | **Integer**| Resolution for image rendering. | [optional] 
 **minimal_line_width** | **Integer**| This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional] 
 **prevent_glyphs_grouping** | **BOOLEAN**| This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional] 
 **split_css_into_pages** | **BOOLEAN**| When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional] 
 **split_into_pages** | **BOOLEAN**| The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional] 
 **use_z_order** | **BOOLEAN**| If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional] 
 **antialiasing_processing** | **String**| The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional] 
 **css_class_names_prefix** | **String**| When PDFtoHTML converter generates result CSSs, CSS class names (something like &quot;.stl_01 {}&quot; ... &quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional] 
 **explicit_list_of_saved_pages** | [**Array&lt;Integer&gt;**](Integer.md)| With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional] 
 **font_encoding_strategy** | **String**| Defines encoding special rule to tune PDF decoding for current document. | [optional] 
 **font_saving_mode** | **String**| Defines font saving mode that will be used during saving of PDF to desirable format. | [optional] 
 **html_markup_generation_mode** | **String**| Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional] 
 **letters_positioning_method** | **String**| The mode of positioning of letters in words in result HTML. | [optional] 
 **pages_flow_type_depends_on_viewers_screen_size** | **BOOLEAN**| If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional] 
 **parts_embedding_mode** | **String**| It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional] 
 **raster_images_saving_mode** | **String**| Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional] 
 **remove_empty_areas_on_top_and_bottom** | **BOOLEAN**| Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional] 
 **save_shadowed_texts_as_transparent_texts** | **BOOLEAN**| Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional] 
 **save_transparent_texts** | **BOOLEAN**| Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional] 
 **special_folder_for_all_images** | **String**| The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **special_folder_for_svg_images** | **String**| The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **try_save_text_underlining_and_strikeouting_in_css** | **BOOLEAN**| PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_la_te_x**
> File get_pdf_in_storage_to_la_te_x(name, opts)

Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  pages_count: 56, # Integer | Pages count.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to LaTeX format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_la_te_x(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_la_te_x: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **pages_count** | **Integer**| Pages count. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_mobi_xml**
> File get_pdf_in_storage_to_mobi_xml(name, opts)

Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to MOBIXML format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_mobi_xml(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_mobi_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_pdf_a**
> File get_pdf_in_storage_to_pdf_a(name, type, opts)

Converts PDF document (located on storage) to PdfA format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

type = "type_example" # String | Type of PdfA format.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to PdfA format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_pdf_a(name, type, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_pdf_a: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **type** | **String**| Type of PdfA format. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_pptx**
> File get_pdf_in_storage_to_pptx(name, opts)

Converts PDF document (located on storage) to PPTX format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  separate_images: true, # BOOLEAN | Separate images.
  slides_as_images: true, # BOOLEAN | Slides as images.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to PPTX format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_pptx(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_pptx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **separate_images** | **BOOLEAN**| Separate images. | [optional] 
 **slides_as_images** | **BOOLEAN**| Slides as images. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_svg**
> File get_pdf_in_storage_to_svg(name, opts)

Converts PDF document (located on storage) to SVG format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  compress_output_to_zip_archive: true, # BOOLEAN | Specifies whether output will be created as one zip-archive.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to SVG format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_svg(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_svg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **compress_output_to_zip_archive** | **BOOLEAN**| Specifies whether output will be created as one zip-archive. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_tiff**
> File get_pdf_in_storage_to_tiff(name, opts)

Converts PDF document (located on storage) to TIFF format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  brightness: 1.2, # Float | Image brightness.
  compression: "compression_example", # String | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
  color_depth: "color_depth_example", # String | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
  left_margin: 56, # Integer | Left image margin.
  right_margin: 56, # Integer | Right image margin.
  top_margin: 56, # Integer | Top image margin.
  bottom_margin: 56, # Integer | Bottom image margin.
  orientation: "orientation_example", # String | Image orientation. Possible values are: None, Landscape, Portait.
  skip_blank_pages: true, # BOOLEAN | Skip blank pages flag.
  width: 56, # Integer | Image width.
  height: 56, # Integer | Image height.
  x_resolution: 56, # Integer | Horizontal resolution.
  y_resolution: 56, # Integer | Vertical resolution.
  page_index: 56, # Integer | Start page to export.
  page_count: 56, # Integer | Number of pages to export.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to TIFF format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_tiff(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **brightness** | **Float**| Image brightness. | [optional] 
 **compression** | **String**| Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional] 
 **color_depth** | **String**| Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional] 
 **left_margin** | **Integer**| Left image margin. | [optional] 
 **right_margin** | **Integer**| Right image margin. | [optional] 
 **top_margin** | **Integer**| Top image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom image margin. | [optional] 
 **orientation** | **String**| Image orientation. Possible values are: None, Landscape, Portait. | [optional] 
 **skip_blank_pages** | **BOOLEAN**| Skip blank pages flag. | [optional] 
 **width** | **Integer**| Image width. | [optional] 
 **height** | **Integer**| Image height. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution. | [optional] 
 **page_index** | **Integer**| Start page to export. | [optional] 
 **page_count** | **Integer**| Number of pages to export. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xls**
> File get_pdf_in_storage_to_xls(name, opts)

Converts PDF document (located on storage) to XLS format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  insert_blank_column_at_first: true, # BOOLEAN | Insert blank column at first
  minimize_the_number_of_worksheets: true, # BOOLEAN | Minimize the number of worksheets
  scale_factor: 1.2, # Float | Scale factor
  uniform_worksheets: true, # BOOLEAN | Uniform worksheets
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to XLS format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_xls(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_xls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xml**
> File get_pdf_in_storage_to_xml(name, opts)

Converts PDF document (located on storage) to XML format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to XML format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_xml(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_pdf_in_storage_to_xps**
> File get_pdf_in_storage_to_xps(name, opts)

Converts PDF document (located on storage) to XPS format and returns resulting file in response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to XPS format and returns resulting file in response content
  result = api_instance.get_pdf_in_storage_to_xps(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_pdf_in_storage_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_ps_in_storage_to_pdf**
> File get_ps_in_storage_to_pdf(src_path, opts)

Convert PS file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.ps)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert PS file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_ps_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_ps_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.ps) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_svg_in_storage_to_pdf**
> File get_svg_in_storage_to_pdf(src_path, opts)

Convert SVG file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.svg)

opts = { 
  adjust_page_size: true, # BOOLEAN | Adjust page size
  height: 1.2, # Float | Page height
  width: 1.2, # Float | Page width
  is_landscape: true, # BOOLEAN | Is page landscaped
  margin_left: 1.2, # Float | Page margin left
  margin_bottom: 1.2, # Float | Page margin bottom
  margin_right: 1.2, # Float | Page margin right
  margin_top: 1.2, # Float | Page margin top
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert SVG file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_svg_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_svg_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.svg) | 
 **adjust_page_size** | **BOOLEAN**| Adjust page size | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_text**
> TextRectsResponse get_text(name, llx, lly, urx, ury, opts)

Read document text.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

llx = 1.2 # Float | 

lly = 1.2 # Float | 

urx = 1.2 # Float | 

ury = 1.2 # Float | 

opts = { 
  format: ["format_example"], # Array<String> | List of formats for search.
  regex: "regex_example", # String | Formats are specified as a regular expression.
  split_rects: true, # BOOLEAN | Split result fragments (default is true).
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Read document text.
  result = api_instance.get_text(name, llx, lly, urx, ury, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **llx** | **Float**|  | 
 **lly** | **Float**|  | 
 **urx** | **Float**|  | 
 **ury** | **Float**|  | 
 **format** | [**Array&lt;String&gt;**](String.md)| List of formats for search. | [optional] 
 **regex** | **String**| Formats are specified as a regular expression. | [optional] 
 **split_rects** | **BOOLEAN**| Split result fragments (default is true). | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**TextRectsResponse**](TextRectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_text_annotation**
> TextAnnotationResponse get_text_annotation(name, annotation_id, opts)

Read document page text annotation by ID.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

annotation_id = "annotation_id_example" # String | The annotation ID.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Read document page text annotation by ID.
  result = api_instance.get_text_annotation(name, annotation_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_text_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationResponse**](TextAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_verify_signature**
> SignatureVerifyResponse get_verify_signature(name, sign_name, opts)

Verify signature document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

sign_name = "sign_name_example" # String | Sign name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Verify signature document.
  result = api_instance.get_verify_signature(name, sign_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_verify_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **sign_name** | **String**| Sign name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SignatureVerifyResponse**](SignatureVerifyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_web_in_storage_to_pdf**
> File get_web_in_storage_to_pdf(url, opts)

Convert web page to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

url = "url_example" # String | Source url

opts = { 
  height: 1.2, # Float | Page height
  width: 1.2, # Float | Page width
  is_landscape: true, # BOOLEAN | Is page landscaped
  margin_left: 1.2, # Float | Page margin left
  margin_bottom: 1.2, # Float | Page margin bottom
  margin_right: 1.2, # Float | Page margin right
  margin_top: 1.2, # Float | Page margin top
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert web page to PDF format and return resulting file in response. 
  result = api_instance.get_web_in_storage_to_pdf(url, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_web_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Source url | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_words_per_page**
> WordCountResponse get_words_per_page(name, opts)

Get number of words per document page.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Get number of words per document page.
  result = api_instance.get_words_per_page(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_words_per_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**WordCountResponse**](WordCountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_xfa_pdf_in_storage_to_acro_form**
> File get_xfa_pdf_in_storage_to_acro_form(name, opts)

Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and returns resulting file response content
  result = api_instance.get_xfa_pdf_in_storage_to_acro_form(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_xfa_pdf_in_storage_to_acro_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xml_in_storage_to_pdf**
> File get_xml_in_storage_to_pdf(src_path, opts)

Convert XML file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.xml)

opts = { 
  xsl_file_path: "xsl_file_path_example", # String | Full XSL source filename (ex. /folder1/folder2/template.xsl)
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert XML file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_xml_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_xml_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xml) | 
 **xsl_file_path** | **String**| Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xps_in_storage_to_pdf**
> File get_xps_in_storage_to_pdf(src_path, opts)

Convert XPS file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.xps)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert XPS file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_xps_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_xps_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xps) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **get_xsl_fo_in_storage_to_pdf**
> File get_xsl_fo_in_storage_to_pdf(src_path, opts)

Convert XslFo file (located on storage) to PDF format and return resulting file in response. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.xslfo)

opts = { 
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert XslFo file (located on storage) to PDF format and return resulting file in response. 
  result = api_instance.get_xsl_fo_in_storage_to_pdf(src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->get_xsl_fo_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xslfo) | 
 **storage** | **String**| The document storage. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **post_append_document**
> DocumentResponse post_append_document(name, opts)

Append document to existing one.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The original document name.

opts = { 
  append_document: AsposePdfCloud::AppendDocument.new, # AppendDocument | with the append document data.
  append_file: "append_file_example", # String | Append file server path.
  start_page: 0, # Integer | Appending start page.
  end_page: 0, # Integer | Appending end page.
  storage: "storage_example", # String | The documents storage.
  folder: "folder_example" # String | The original document folder.
}

begin
  #Append document to existing one.
  result = api_instance.post_append_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_append_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The original document name. | 
 **append_document** | [**AppendDocument**](AppendDocument.md)| with the append document data. | [optional] 
 **append_file** | **String**| Append file server path. | [optional] 
 **start_page** | **Integer**| Appending start page. | [optional] [default to 0]
 **end_page** | **Integer**| Appending end page. | [optional] [default to 0]
 **storage** | **String**| The documents storage. | [optional] 
 **folder** | **String**| The original document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_create_field**
> AsposeResponse post_create_field(name, page, opts)

Create field.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page = 56 # Integer | Document page number.

opts = { 
  field: AsposePdfCloud::Field.new, # Field | with the field data.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Create field.
  result = api_instance.post_create_field(name, page, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_create_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page** | **Integer**| Document page number. | 
 **field** | [**Field**](Field.md)| with the field data. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_document_text_replace**
> TextReplaceResponse post_document_text_replace(name, text_replace, opts)

Document's replace text method.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

text_replace = AsposePdfCloud::TextReplaceListRequest.new # TextReplaceListRequest | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Document's replace text method.
  result = api_instance.post_document_text_replace(name, text_replace, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_document_text_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **text_replace** | [**TextReplaceListRequest**](TextReplaceListRequest.md)|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**TextReplaceResponse**](TextReplaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_insert_image**
> AsposeResponse post_insert_image(name, page_number, llx, lly, urx, ury, opts)

Insert image to document page.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

llx = 1.2 # Float | Coordinate lower left X.

lly = 1.2 # Float | Coordinate lower left Y.

urx = 1.2 # Float | Coordinate upper right X.

ury = 1.2 # Float | Coordinate upper right Y.

opts = { 
  image_file_path: "image_file_path_example", # String | Path to image file if specified. Request content is used otherwise.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  image: File.new("/path/to/file.txt") # File | Image file.
}

begin
  #Insert image to document page.
  result = api_instance.post_insert_image(name, page_number, llx, lly, urx, ury, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_insert_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **llx** | **Float**| Coordinate lower left X. | 
 **lly** | **Float**| Coordinate lower left Y. | 
 **urx** | **Float**| Coordinate upper right X. | 
 **ury** | **Float**| Coordinate upper right Y. | 
 **image_file_path** | **String**| Path to image file if specified. Request content is used otherwise. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **image** | **File**| Image file. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_move_page**
> AsposeResponse post_move_page(name, page_number, new_index, opts)

Move page to new position.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

new_index = 56 # Integer | The new page position/index.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Move page to new position.
  result = api_instance.post_move_page(name, page_number, new_index, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_move_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **new_index** | **Integer**| The new page position/index. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_optimize_document**
> AsposeResponse post_optimize_document(name, opts)

Optimize document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  options: AsposePdfCloud::OptimizeOptions.new, # OptimizeOptions | The optimization options.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Optimize document.
  result = api_instance.post_optimize_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_optimize_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **options** | [**OptimizeOptions**](OptimizeOptions.md)| The optimization options. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_free_text_annotations**
> AsposeResponse post_page_free_text_annotations(name, page_number, annotations, opts)

Add document page free text annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

annotations = [AsposePdfCloud::FreeTextAnnotation.new] # Array<FreeTextAnnotation> | The array of annotation.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Add document page free text annotations.
  result = api_instance.post_page_free_text_annotations(name, page_number, annotations, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_page_free_text_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;FreeTextAnnotation&gt;**](FreeTextAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_link_annotations**
> AsposeResponse post_page_link_annotations(name, page_number, links, opts)

Add document page link annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

links = [AsposePdfCloud::LinkAnnotation.new] # Array<LinkAnnotation> | Array of link anotation.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Add document page link annotations.
  result = api_instance.post_page_link_annotations(name, page_number, links, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_page_link_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **links** | [**Array&lt;LinkAnnotation&gt;**](LinkAnnotation.md)| Array of link anotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_text_annotations**
> AsposeResponse post_page_text_annotations(name, page_number, annotations, opts)

Add document page text annotations.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

annotations = [AsposePdfCloud::TextAnnotation.new] # Array<TextAnnotation> | The array of annotation.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Add document page text annotations.
  result = api_instance.post_page_text_annotations(name, page_number, annotations, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_page_text_annotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **annotations** | [**Array&lt;TextAnnotation&gt;**](TextAnnotation.md)| The array of annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_page_text_replace**
> TextReplaceResponse post_page_text_replace(name, page_number, text_replace_list_request, opts)

Page's replace text method.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

page_number = 56 # Integer | 

text_replace_list_request = AsposePdfCloud::TextReplaceListRequest.new # TextReplaceListRequest | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Page's replace text method.
  result = api_instance.post_page_text_replace(name, page_number, text_replace_list_request, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_page_text_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **page_number** | **Integer**|  | 
 **text_replace_list_request** | [**TextReplaceListRequest**](TextReplaceListRequest.md)|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**TextReplaceResponse**](TextReplaceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_sign_document**
> AsposeResponse post_sign_document(name, opts)

Sign document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  signature: AsposePdfCloud::Signature.new, # Signature | Signature object containing signature data.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Sign document.
  result = api_instance.post_sign_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_sign_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **signature** | [**Signature**](Signature.md)| Signature object containing signature data. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_sign_page**
> AsposeResponse post_sign_page(name, page_number, opts)

Sign page.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  signature: AsposePdfCloud::Signature.new, # Signature | Signature object containing signature data.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Sign page.
  result = api_instance.post_sign_page(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_sign_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **signature** | [**Signature**](Signature.md)| Signature object containing signature data. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_split_document**
> SplitResultResponse post_split_document(name, opts)

Split document to parts.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | Document name.

opts = { 
  format: "format_example", # String | Resulting documents format.
  from: 56, # Integer | Start page if defined.
  to: 56, # Integer | End page if defined.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Split document to parts.
  result = api_instance.post_split_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->post_split_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document name. | 
 **format** | **String**| Resulting documents format. | [optional] 
 **from** | **Integer**| Start page if defined. | [optional] 
 **to** | **Integer**| End page if defined. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**SplitResultResponse**](SplitResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_add_new_page**
> DocumentPagesResponse put_add_new_page(name, opts)

Add new page to end of the document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Add new page to end of the document.
  result = api_instance.put_add_new_page(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_add_new_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**DocumentPagesResponse**](DocumentPagesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_add_text**
> AsposeResponse put_add_text(name, page_number, opts)

Add text to PDF document page.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | Number of page (starting from 1).

opts = { 
  paragraph: AsposePdfCloud::Paragraph.new, # Paragraph | Paragraph data.
  folder: "folder_example", # String | Document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Add text to PDF document page.
  result = api_instance.put_add_text(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_add_text: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| Number of page (starting from 1). | 
 **paragraph** | [**Paragraph**](Paragraph.md)| Paragraph data. | [optional] 
 **folder** | **String**| Document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_create**
> AsposeResponse put_create(path, file, opts)

Upload a specific file 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

path = "path_example" # String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext

file = File.new("/path/to/file.txt") # File | File to upload

opts = { 
  version_id: "version_id_example", # String | Source file's version
  storage: "storage_example" # String | User's storage name
}

begin
  #Upload a specific file 
  result = api_instance.put_create(path, file, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext | 
 **file** | **File**| File to upload | 
 **version_id** | **String**| Source file&#39;s version | [optional] 
 **storage** | **String**| User&#39;s storage name | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_create_document**
> DocumentResponse put_create_document(name, opts)

Create empty document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The new document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The new document folder.
}

begin
  #Create empty document.
  result = api_instance.put_create_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_create_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The new document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The new document folder. | [optional] 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_epub_in_storage_to_pdf**
> AsposeResponse put_epub_in_storage_to_pdf(name, src_path, opts)

Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.epub)

opts = { 
  storage: "storage_example", # String | The document storage.
  dst_folder: "dst_folder_example" # String | The destination document folder.
}

begin
  #Convert EPUB file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_epub_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_epub_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.epub) | 
 **storage** | **String**| The document storage. | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_fields_flatten**
> AsposeResponse put_fields_flatten(name, opts)

Flatten form fields in document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Flatten form fields in document.
  result = api_instance.put_fields_flatten(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_fields_flatten: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_free_text_annotation**
> FreeTextAnnotationResponse put_free_text_annotation(name, annotation_id, annotation, opts)

Replace document free text annotation

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

annotation_id = "annotation_id_example" # String | The annotation ID.

annotation = AsposePdfCloud::FreeTextAnnotation.new # FreeTextAnnotation | Annotation.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Replace document free text annotation
  result = api_instance.put_free_text_annotation(name, annotation_id, annotation, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_free_text_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**FreeTextAnnotation**](FreeTextAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FreeTextAnnotationResponse**](FreeTextAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_html_in_storage_to_pdf**
> AsposeResponse put_html_in_storage_to_pdf(name, src_path, html_file_name, opts)

Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.zip)

html_file_name = "html_file_name_example" # String | Name of HTML file in ZIP.

opts = { 
  height: 1.2, # Float | Page height
  width: 1.2, # Float | Page width
  is_landscape: true, # BOOLEAN | Is page landscaped
  margin_left: 1.2, # Float | Page margin left
  margin_bottom: 1.2, # Float | Page margin bottom
  margin_right: 1.2, # Float | Page margin right
  margin_top: 1.2, # Float | Page margin top
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert HTML file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_html_in_storage_to_pdf(name, src_path, html_file_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_html_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.zip) | 
 **html_file_name** | **String**| Name of HTML file in ZIP. | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_gif**
> AsposeResponse put_image_extract_as_gif(name, image_id, opts)

Extract document image in GIF format to folder

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document image in GIF format to folder
  result = api_instance.put_image_extract_as_gif(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_image_extract_as_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_jpeg**
> AsposeResponse put_image_extract_as_jpeg(name, image_id, opts)

Extract document image in JPEG format to folder

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document image in JPEG format to folder
  result = api_instance.put_image_extract_as_jpeg(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_image_extract_as_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_png**
> AsposeResponse put_image_extract_as_png(name, image_id, opts)

Extract document image in PNG format to folder

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document image in PNG format to folder
  result = api_instance.put_image_extract_as_png(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_image_extract_as_png: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_extract_as_tiff**
> AsposeResponse put_image_extract_as_tiff(name, image_id, opts)

Extract document image in TIFF format to folder

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | Image ID.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document image in TIFF format to folder
  result = api_instance.put_image_extract_as_tiff(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_image_extract_as_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| Image ID. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_image_in_storage_to_pdf**
> AsposeResponse put_image_in_storage_to_pdf(name, image_templates, opts)

Convert image file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_templates = AsposePdfCloud::ImageTemplatesRequest.new # ImageTemplatesRequest | Image templates

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert image file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_image_in_storage_to_pdf(name, image_templates, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_image_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_templates** | [**ImageTemplatesRequest**](ImageTemplatesRequest.md)| Image templates | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_gif**
> AsposeResponse put_images_extract_as_gif(name, page_number, opts)

Extract document images in GIF format to folder.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document images in GIF format to folder.
  result = api_instance.put_images_extract_as_gif(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_images_extract_as_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_jpeg**
> AsposeResponse put_images_extract_as_jpeg(name, page_number, opts)

Extract document images in JPEG format to folder.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | 
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document images in JPEG format to folder.
  result = api_instance.put_images_extract_as_jpeg(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_images_extract_as_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**|  | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_png**
> AsposeResponse put_images_extract_as_png(name, page_number, opts)

Extract document images in PNG format to folder.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document images in PNG format to folder.
  result = api_instance.put_images_extract_as_png(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_images_extract_as_png: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_images_extract_as_tiff**
> AsposeResponse put_images_extract_as_tiff(name, page_number, opts)

Extract document images in TIFF format to folder.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  dest_folder: "dest_folder_example" # String | The document folder.
}

begin
  #Extract document images in TIFF format to folder.
  result = api_instance.put_images_extract_as_tiff(name, page_number, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_images_extract_as_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **dest_folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_la_te_x_in_storage_to_pdf**
> AsposeResponse put_la_te_x_in_storage_to_pdf(name, src_path, opts)

Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.tex)

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert LaTeX file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_la_te_x_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_la_te_x_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.tex) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_link_annotation**
> LinkAnnotationResponse put_link_annotation(name, link_id, link, opts)

Replace document page link annotations

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

link_id = "link_id_example" # String | The link ID.

link = AsposePdfCloud::LinkAnnotation.new # LinkAnnotation | Link anotation.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Replace document page link annotations
  result = api_instance.put_link_annotation(name, link_id, link, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_link_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **link_id** | **String**| The link ID. | 
 **link** | [**LinkAnnotation**](LinkAnnotation.md)| Link anotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**LinkAnnotationResponse**](LinkAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_merge_documents**
> File put_merge_documents(name, opts)

Merge a list of documents.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | Resulting documen name.

opts = { 
  merge_documents: AsposePdfCloud::MergeDocuments.new, # MergeDocuments | with a list of documents.
  storage: "storage_example", # String | Resulting document storage.
  folder: "folder_example" # String | Resulting document folder.
}

begin
  #Merge a list of documents.
  result = api_instance.put_merge_documents(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_merge_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Resulting documen name. | 
 **merge_documents** | [**MergeDocuments**](MergeDocuments.md)| with a list of documents. | [optional] 
 **storage** | **String**| Resulting document storage. | [optional] 
 **folder** | **String**| Resulting document folder. | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_mht_in_storage_to_pdf**
> AsposeResponse put_mht_in_storage_to_pdf(name, src_path, opts)

Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.mht)

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert MHT file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_mht_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_mht_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.mht) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_add_stamp**
> AsposeResponse put_page_add_stamp(name, page_number, stamp, opts)

Add page stamp.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

stamp = AsposePdfCloud::Stamp.new # Stamp | with data.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Add page stamp.
  result = api_instance.put_page_add_stamp(name, page_number, stamp, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_add_stamp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **stamp** | [**Stamp**](Stamp.md)| with data. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_bmp**
> AsposeResponse put_page_convert_to_bmp(name, page_number, out_path, opts)

Convert document page to bmp image and upload resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

out_path = "out_path_example" # String | The out path of result image.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to bmp image and upload resulting file to storage.
  result = api_instance.put_page_convert_to_bmp(name, page_number, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_convert_to_bmp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_emf**
> AsposeResponse put_page_convert_to_emf(name, page_number, out_path, opts)

Convert document page to emf image and upload resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

out_path = "out_path_example" # String | The out path of result image.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to emf image and upload resulting file to storage.
  result = api_instance.put_page_convert_to_emf(name, page_number, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_convert_to_emf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_gif**
> AsposeResponse put_page_convert_to_gif(name, page_number, out_path, opts)

Convert document page to gif image and upload resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

out_path = "out_path_example" # String | The out path of result image.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to gif image and upload resulting file to storage.
  result = api_instance.put_page_convert_to_gif(name, page_number, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_convert_to_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_jpeg**
> AsposeResponse put_page_convert_to_jpeg(name, page_number, out_path, opts)

Convert document page to Jpeg image and upload resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

out_path = "out_path_example" # String | The out path of result image.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Jpeg image and upload resulting file to storage.
  result = api_instance.put_page_convert_to_jpeg(name, page_number, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_convert_to_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_png**
> AsposeResponse put_page_convert_to_png(name, page_number, out_path, opts)

Convert document page to png image and upload resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

out_path = "out_path_example" # String | The out path of result image.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to png image and upload resulting file to storage.
  result = api_instance.put_page_convert_to_png(name, page_number, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_convert_to_png: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_page_convert_to_tiff**
> AsposeResponse put_page_convert_to_tiff(name, page_number, out_path, opts)

Convert document page to Tiff image and upload resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

page_number = 56 # Integer | The page number.

out_path = "out_path_example" # String | The out path of result image.

opts = { 
  width: 56, # Integer | The converted image width.
  height: 56, # Integer | The converted image height.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert document page to Tiff image and upload resulting file to storage.
  result = api_instance.put_page_convert_to_tiff(name, page_number, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_page_convert_to_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **page_number** | **Integer**| The page number. | 
 **out_path** | **String**| The out path of result image. | 
 **width** | **Integer**| The converted image width. | [optional] 
 **height** | **Integer**| The converted image height. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pcl_in_storage_to_pdf**
> AsposeResponse put_pcl_in_storage_to_pdf(name, src_path, opts)

Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.pcl)

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert PCL file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_pcl_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pcl_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.pcl) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_request_to_doc**
> AsposeResponse put_pdf_in_request_to_doc(out_path, opts)

Converts PDF document (in request content) to DOC format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.doc)

opts = { 
  add_return_to_line_end: true, # BOOLEAN | Add return to line end.
  format: "format_example", # String | Allows to specify .doc or .docx file format.
  image_resolution_x: 56, # Integer | Image resolution X.
  image_resolution_y: 56, # Integer | Image resolution Y.
  max_distance_between_text_lines: 1.2, # Float | Max distance between text lines.
  mode: "mode_example", # String | Allows to control how a PDF document is converted into a word processing document.
  recognize_bullets: true, # BOOLEAN | Recognize bullets.
  relative_horizontal_proximity: 1.2, # Float | Relative horizontal proximity.
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to DOC format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_doc(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **add_return_to_line_end** | **BOOLEAN**| Add return to line end. | [optional] 
 **format** | **String**| Allows to specify .doc or .docx file format. | [optional] 
 **image_resolution_x** | **Integer**| Image resolution X. | [optional] 
 **image_resolution_y** | **Integer**| Image resolution Y. | [optional] 
 **max_distance_between_text_lines** | **Float**| Max distance between text lines. | [optional] 
 **mode** | **String**| Allows to control how a PDF document is converted into a word processing document. | [optional] 
 **recognize_bullets** | **BOOLEAN**| Recognize bullets. | [optional] 
 **relative_horizontal_proximity** | **Float**| Relative horizontal proximity. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_epub**
> AsposeResponse put_pdf_in_request_to_epub(out_path, opts)

Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.epub)

opts = { 
  content_recognition_mode: "content_recognition_mode_example", # String | ?roperty tunes conversion for this or that desirable method of recognition of content.
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to EPUB format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_epub(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_epub: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.epub) | 
 **content_recognition_mode** | **String**| ?roperty tunes conversion for this or that desirable method of recognition of content. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_html**
> AsposeResponse put_pdf_in_request_to_html(out_path, opts)

Converts PDF document (in request content) to Html format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.html)

opts = { 
  additional_margin_width_in_points: 56, # Integer | Defines width of margin that will be forcibly left around that output HTML-areas.
  compress_svg_graphics_if_any: true, # BOOLEAN | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
  convert_marked_content_to_layers: true, # BOOLEAN | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \"data-pdflayer\" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
  default_font_name: "default_font_name_example", # String | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
  document_type: "document_type_example", # String | Result document type.
  fixed_layout: true, # BOOLEAN | The value indicating whether that HTML is created as fixed layout.
  image_resolution: 56, # Integer | Resolution for image rendering.
  minimal_line_width: 56, # Integer | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
  prevent_glyphs_grouping: true, # BOOLEAN | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
  split_css_into_pages: true, # BOOLEAN | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page.
  split_into_pages: true, # BOOLEAN | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
  use_z_order: true, # BOOLEAN | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
  antialiasing_processing: "antialiasing_processing_example", # String | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
  css_class_names_prefix: "css_class_names_prefix_example", # String | When PDFtoHTML converter generates result CSSs, CSS class names (something like \".stl_01 {}\" ... \".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
  explicit_list_of_saved_pages: [56], # Array<Integer> | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
  font_encoding_strategy: "font_encoding_strategy_example", # String | Defines encoding special rule to tune PDF decoding for current document.
  font_saving_mode: "font_saving_mode_example", # String | Defines font saving mode that will be used during saving of PDF to desirable format.
  html_markup_generation_mode: "html_markup_generation_mode_example", # String | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
  letters_positioning_method: "letters_positioning_method_example", # String | The mode of positioning of letters in words in result HTML.
  pages_flow_type_depends_on_viewers_screen_size: true, # BOOLEAN | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
  parts_embedding_mode: "parts_embedding_mode_example", # String | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
  raster_images_saving_mode: "raster_images_saving_mode_example", # String | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
  remove_empty_areas_on_top_and_bottom: true, # BOOLEAN | Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
  save_shadowed_texts_as_transparent_texts: true, # BOOLEAN | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
  save_transparent_texts: true, # BOOLEAN | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
  special_folder_for_all_images: "special_folder_for_all_images_example", # String | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
  special_folder_for_svg_images: "special_folder_for_svg_images_example", # String | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
  try_save_text_underlining_and_strikeouting_in_css: true, # BOOLEAN | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically.
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to Html format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_html(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.html) | 
 **additional_margin_width_in_points** | **Integer**| Defines width of margin that will be forcibly left around that output HTML-areas. | [optional] 
 **compress_svg_graphics_if_any** | **BOOLEAN**| The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional] 
 **convert_marked_content_to_layers** | **BOOLEAN**| If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with &quot;data-pdflayer&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional] 
 **default_font_name** | **String**| Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional] 
 **document_type** | **String**| Result document type. | [optional] 
 **fixed_layout** | **BOOLEAN**| The value indicating whether that HTML is created as fixed layout. | [optional] 
 **image_resolution** | **Integer**| Resolution for image rendering. | [optional] 
 **minimal_line_width** | **Integer**| This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional] 
 **prevent_glyphs_grouping** | **BOOLEAN**| This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional] 
 **split_css_into_pages** | **BOOLEAN**| When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional] 
 **split_into_pages** | **BOOLEAN**| The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional] 
 **use_z_order** | **BOOLEAN**| If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional] 
 **antialiasing_processing** | **String**| The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional] 
 **css_class_names_prefix** | **String**| When PDFtoHTML converter generates result CSSs, CSS class names (something like &quot;.stl_01 {}&quot; ... &quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional] 
 **explicit_list_of_saved_pages** | [**Array&lt;Integer&gt;**](Integer.md)| With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional] 
 **font_encoding_strategy** | **String**| Defines encoding special rule to tune PDF decoding for current document. | [optional] 
 **font_saving_mode** | **String**| Defines font saving mode that will be used during saving of PDF to desirable format. | [optional] 
 **html_markup_generation_mode** | **String**| Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional] 
 **letters_positioning_method** | **String**| The mode of positioning of letters in words in result HTML. | [optional] 
 **pages_flow_type_depends_on_viewers_screen_size** | **BOOLEAN**| If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional] 
 **parts_embedding_mode** | **String**| It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional] 
 **raster_images_saving_mode** | **String**| Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional] 
 **remove_empty_areas_on_top_and_bottom** | **BOOLEAN**| Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional] 
 **save_shadowed_texts_as_transparent_texts** | **BOOLEAN**| Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional] 
 **save_transparent_texts** | **BOOLEAN**| Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional] 
 **special_folder_for_all_images** | **String**| The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **special_folder_for_svg_images** | **String**| The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **try_save_text_underlining_and_strikeouting_in_css** | **BOOLEAN**| PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_la_te_x**
> AsposeResponse put_pdf_in_request_to_la_te_x(out_path, opts)

Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.tex)

opts = { 
  pages_count: 56, # Integer | Pages count.
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to LaTeX format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_la_te_x(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_la_te_x: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tex) | 
 **pages_count** | **Integer**| Pages count. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_mobi_xml**
> AsposeResponse put_pdf_in_request_to_mobi_xml(out_path, opts)

Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.mobixml)

opts = { 
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to MOBIXML format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_mobi_xml(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_mobi_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.mobixml) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_pdf_a**
> AsposeResponse put_pdf_in_request_to_pdf_a(out_path, type, opts)

Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pdf)

type = "type_example" # String | Type of PdfA format.

opts = { 
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to PdfA format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_pdf_a(out_path, type, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_pdf_a: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **type** | **String**| Type of PdfA format. | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_pptx**
> AsposeResponse put_pdf_in_request_to_pptx(out_path, opts)

Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pptx)

opts = { 
  separate_images: true, # BOOLEAN | Separate images.
  slides_as_images: true, # BOOLEAN | Slides as images.
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to PPTX format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_pptx(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_pptx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pptx) | 
 **separate_images** | **BOOLEAN**| Separate images. | [optional] 
 **slides_as_images** | **BOOLEAN**| Slides as images. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_svg**
> AsposeResponse put_pdf_in_request_to_svg(out_path, opts)

Converts PDF document (in request content) to SVG format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.svg)

opts = { 
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to SVG format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_svg(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_svg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.svg) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_tiff**
> AsposeResponse put_pdf_in_request_to_tiff(out_path, opts)

Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.tiff)

opts = { 
  brightness: 1.2, # Float | Image brightness.
  compression: "compression_example", # String | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
  color_depth: "color_depth_example", # String | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
  left_margin: 56, # Integer | Left image margin.
  right_margin: 56, # Integer | Right image margin.
  top_margin: 56, # Integer | Top image margin.
  bottom_margin: 56, # Integer | Bottom image margin.
  orientation: "orientation_example", # String | Image orientation. Possible values are: None, Landscape, Portait.
  skip_blank_pages: true, # BOOLEAN | Skip blank pages flag.
  width: 56, # Integer | Image width.
  height: 56, # Integer | Image height.
  x_resolution: 56, # Integer | Horizontal resolution.
  y_resolution: 56, # Integer | Vertical resolution.
  page_index: 56, # Integer | Start page to export.
  page_count: 56, # Integer | Number of pages to export.
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to TIFF format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_tiff(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tiff) | 
 **brightness** | **Float**| Image brightness. | [optional] 
 **compression** | **String**| Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional] 
 **color_depth** | **String**| Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional] 
 **left_margin** | **Integer**| Left image margin. | [optional] 
 **right_margin** | **Integer**| Right image margin. | [optional] 
 **top_margin** | **Integer**| Top image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom image margin. | [optional] 
 **orientation** | **String**| Image orientation. Possible values are: None, Landscape, Portait. | [optional] 
 **skip_blank_pages** | **BOOLEAN**| Skip blank pages flag. | [optional] 
 **width** | **Integer**| Image width. | [optional] 
 **height** | **Integer**| Image height. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution. | [optional] 
 **page_index** | **Integer**| Start page to export. | [optional] 
 **page_count** | **Integer**| Number of pages to export. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xls**
> AsposeResponse put_pdf_in_request_to_xls(out_path, opts)

Converts PDF document (in request content) to XLS format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xls)

opts = { 
  insert_blank_column_at_first: true, # BOOLEAN | Insert blank column at first
  minimize_the_number_of_worksheets: true, # BOOLEAN | Minimize the number of worksheets
  scale_factor: 1.2, # Float | Scale factor
  uniform_worksheets: true, # BOOLEAN | Uniform worksheets
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to XLS format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_xls(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_xls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xls) | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xml**
> AsposeResponse put_pdf_in_request_to_xml(out_path, opts)

Converts PDF document (in request content) to XML format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xml)

opts = { 
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to XML format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_xml(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xml) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_request_to_xps**
> AsposeResponse put_pdf_in_request_to_xps(out_path, opts)

Converts PDF document (in request content) to XPS format and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xps)

opts = { 
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document (in request content) to XPS format and uploads resulting file to storage.
  result = api_instance.put_pdf_in_request_to_xps(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_request_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xps) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_pdf_in_storage_to_doc**
> AsposeResponse put_pdf_in_storage_to_doc(name, out_path, opts)

Converts PDF document (located on storage) to DOC format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.doc)

opts = { 
  add_return_to_line_end: true, # BOOLEAN | Add return to line end.
  format: "format_example", # String | Allows to specify .doc or .docx file format.
  image_resolution_x: 56, # Integer | Image resolution X.
  image_resolution_y: 56, # Integer | Image resolution Y.
  max_distance_between_text_lines: 1.2, # Float | Max distance between text lines.
  mode: "mode_example", # String | Allows to control how a PDF document is converted into a word processing document.
  recognize_bullets: true, # BOOLEAN | Recognize bullets.
  relative_horizontal_proximity: 1.2, # Float | Relative horizontal proximity.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to DOC format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_doc(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.doc) | 
 **add_return_to_line_end** | **BOOLEAN**| Add return to line end. | [optional] 
 **format** | **String**| Allows to specify .doc or .docx file format. | [optional] 
 **image_resolution_x** | **Integer**| Image resolution X. | [optional] 
 **image_resolution_y** | **Integer**| Image resolution Y. | [optional] 
 **max_distance_between_text_lines** | **Float**| Max distance between text lines. | [optional] 
 **mode** | **String**| Allows to control how a PDF document is converted into a word processing document. | [optional] 
 **recognize_bullets** | **BOOLEAN**| Recognize bullets. | [optional] 
 **relative_horizontal_proximity** | **Float**| Relative horizontal proximity. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_epub**
> AsposeResponse put_pdf_in_storage_to_epub(name, out_path, opts)

Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.epub)

opts = { 
  content_recognition_mode: "content_recognition_mode_example", # String | ?roperty tunes conversion for this or that desirable method of recognition of content.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to EPUB format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_epub(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_epub: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.epub) | 
 **content_recognition_mode** | **String**| ?roperty tunes conversion for this or that desirable method of recognition of content. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_html**
> AsposeResponse put_pdf_in_storage_to_html(name, out_path, opts)

Converts PDF document (located on storage) to Html format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.html)

opts = { 
  additional_margin_width_in_points: 56, # Integer | Defines width of margin that will be forcibly left around that output HTML-areas.
  compress_svg_graphics_if_any: true, # BOOLEAN | The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving.
  convert_marked_content_to_layers: true, # BOOLEAN | If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with \"data-pdflayer\" attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content.
  default_font_name: "default_font_name_example", # String | Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used.
  document_type: "document_type_example", # String | Result document type.
  fixed_layout: true, # BOOLEAN | The value indicating whether that HTML is created as fixed layout.
  image_resolution: 56, # Integer | Resolution for image rendering.
  minimal_line_width: 56, # Integer | This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers.
  prevent_glyphs_grouping: true, # BOOLEAN | This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true.
  split_css_into_pages: true, # BOOLEAN | When multipage-mode selected(i.e 'SplitIntoPages' is 'true'), then this attribute defines whether should be created separate CSS-file for each result HTML page.
  split_into_pages: true, # BOOLEAN | The flag that indicates whether each page of source document will be converted into it's own target HTML document, i.e whether result HTML will be splitted into several HTML-pages.
  use_z_order: true, # BOOLEAN | If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects.
  antialiasing_processing: "antialiasing_processing_example", # String | The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML.
  css_class_names_prefix: "css_class_names_prefix_example", # String | When PDFtoHTML converter generates result CSSs, CSS class names (something like \".stl_01 {}\" ... \".stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix.
  explicit_list_of_saved_pages: [56], # Array<Integer> | With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF.
  font_encoding_strategy: "font_encoding_strategy_example", # String | Defines encoding special rule to tune PDF decoding for current document.
  font_saving_mode: "font_saving_mode_example", # String | Defines font saving mode that will be used during saving of PDF to desirable format.
  html_markup_generation_mode: "html_markup_generation_mode_example", # String | Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments.
  letters_positioning_method: "letters_positioning_method_example", # String | The mode of positioning of letters in words in result HTML.
  pages_flow_type_depends_on_viewers_screen_size: true, # BOOLEAN | If attribute 'SplitOnPages=false', than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer.
  parts_embedding_mode: "parts_embedding_mode_example", # String | It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities.
  raster_images_saving_mode: "raster_images_saving_mode_example", # String | Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML.
  remove_empty_areas_on_top_and_bottom: true, # BOOLEAN | Defines whether in created HTML will be removed top and bottom empty area without any content (if any).
  save_shadowed_texts_as_transparent_texts: true, # BOOLEAN | Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard).
  save_transparent_texts: true, # BOOLEAN | Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML.
  special_folder_for_all_images: "special_folder_for_all_images_example", # String | The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
  special_folder_for_svg_images: "special_folder_for_svg_images_example", # String | The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file.
  try_save_text_underlining_and_strikeouting_in_css: true, # BOOLEAN | PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text's underlining and put this info into CSS instead of drawing of underlining graphically.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to Html format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_html(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.html) | 
 **additional_margin_width_in_points** | **Integer**| Defines width of margin that will be forcibly left around that output HTML-areas. | [optional] 
 **compress_svg_graphics_if_any** | **BOOLEAN**| The flag that indicates whether found SVG graphics(if any) will be compressed(zipped) into SVGZ format during saving. | [optional] 
 **convert_marked_content_to_layers** | **BOOLEAN**| If attribute ConvertMarkedContentToLayers set to true then an all elements inside a PDF marked content (layer) will be put into an HTML div with &quot;data-pdflayer&quot; attribute specifying a layer name. This layer name will be extracted from optional properties of PDF marked content. If this attribute is false (by default) then no any layers will be created from PDF marked content. | [optional] 
 **default_font_name** | **String**| Specifies the name of an installed font which is used to substitute any document font that is not embedded and not installed in the system. If null then default substitution font is used. | [optional] 
 **document_type** | **String**| Result document type. | [optional] 
 **fixed_layout** | **BOOLEAN**| The value indicating whether that HTML is created as fixed layout. | [optional] 
 **image_resolution** | **Integer**| Resolution for image rendering. | [optional] 
 **minimal_line_width** | **Integer**| This attribute sets minimal width of graphic path line. If thickness of line is less than 1px Adobe Acrobat rounds it to this value. So this attribute can be used to emulate this behavior for HTML browsers. | [optional] 
 **prevent_glyphs_grouping** | **BOOLEAN**| This attribute switch on the mode when text glyphs will not be grouped into words and strings This mode allows to keep maximum precision during positioning of glyphs on the page and it can be used for conversion documents with music notes or glyphs that should be placed separately each other. This parameter will be applied to document only when the value of FixedLayout attribute is true. | [optional] 
 **split_css_into_pages** | **BOOLEAN**| When multipage-mode selected(i.e &#39;SplitIntoPages&#39; is &#39;true&#39;), then this attribute defines whether should be created separate CSS-file for each result HTML page. | [optional] 
 **split_into_pages** | **BOOLEAN**| The flag that indicates whether each page of source document will be converted into it&#39;s own target HTML document, i.e whether result HTML will be splitted into several HTML-pages. | [optional] 
 **use_z_order** | **BOOLEAN**| If attribute UseZORder set to true, graphics and text are added to resultant HTML document accordingly Z-order in original PDF document. If this attribute is false all graphics is put as single layer which may cause some unnecessary effects for overlapped objects. | [optional] 
 **antialiasing_processing** | **String**| The parameter defines required antialiasing measures during conversion of compound background images from PDF to HTML. | [optional] 
 **css_class_names_prefix** | **String**| When PDFtoHTML converter generates result CSSs, CSS class names (something like &quot;.stl_01 {}&quot; ... &quot;.stl_NN {}) are generated and used in result CSS. This property allows forcibly set class name prefix. | [optional] 
 **explicit_list_of_saved_pages** | [**Array&lt;Integer&gt;**](Integer.md)| With this property You can explicitely define what pages of document should be converted. Pages in this list must have 1-based numbers. I.e. valid numbers of pages must be taken from range (1...[NumberOfPagesInConvertedDocument]) Order of appearing of pages in this list does not affect their order in result HTML page(s) - in result pages allways will go in order in which they are present in source PDF. | [optional] 
 **font_encoding_strategy** | **String**| Defines encoding special rule to tune PDF decoding for current document. | [optional] 
 **font_saving_mode** | **String**| Defines font saving mode that will be used during saving of PDF to desirable format. | [optional] 
 **html_markup_generation_mode** | **String**| Sometimes specific reqirments to generation of HTML markup are present. This parameter defines HTML preparing modes that can be used during conversion of PDF to HTML to match such specific requirments. | [optional] 
 **letters_positioning_method** | **String**| The mode of positioning of letters in words in result HTML. | [optional] 
 **pages_flow_type_depends_on_viewers_screen_size** | **BOOLEAN**| If attribute &#39;SplitOnPages&#x3D;false&#39;, than whole HTML representing all input PDF pages will be put into one big result HTML file. This flag defines whether result HTML will be generated in such way that flow of areas that represent PDF pages in result HTML will depend on screen resolution of viewer. | [optional] 
 **parts_embedding_mode** | **String**| It defines whether referenced files (HTML, Fonts,Images, CSSes) will be embedded into main HTML file or will be generated as apart binary entities. | [optional] 
 **raster_images_saving_mode** | **String**| Converted PDF can contain raster images This parameter defines how they should be handled during conversion of PDF to HTML. | [optional] 
 **remove_empty_areas_on_top_and_bottom** | **BOOLEAN**| Defines whether in created HTML will be removed top and bottom empty area without any content (if any). | [optional] 
 **save_shadowed_texts_as_transparent_texts** | **BOOLEAN**| Pdf can contain texts that are shadowed by another elements (f.e. by images) but can be selected to clipboard in Acrobat Reader (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML to mimic behaviour of Acrobat Reader (othervise such texts are usually saved as hidden, not available for copying to clipboard). | [optional] 
 **save_transparent_texts** | **BOOLEAN**| Pdf can contain transparent texts that can be selected to clipboard (usually it happen when document contains images and OCRed texts extracted from it). This settings tells to converter whether we need save such texts as transparent selectable texts in result HTML. | [optional] 
 **special_folder_for_all_images** | **String**| The path to directory to which must be saved any images if they are encountered during saving of document as HTML. If parameter is empty or null then image files(if any) wil be saved together with other files linked to HTML It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **special_folder_for_svg_images** | **String**| The path to directory to which must be saved only SVG-images if they are encountered during saving of document as HTML. If parameter is empty or null then SVG files(if any) wil be saved together with other image-files (near to output file) or in special folder for images (if it specified in SpecialImagesFolderIfAny option). It does not affect anything if CustomImageSavingStrategy property was successfully used to process relevant image file. | [optional] 
 **try_save_text_underlining_and_strikeouting_in_css** | **BOOLEAN**| PDF itself does not contain underlining markers for texts. It emulated with line situated under text. This option allows converter try guess that this or that line is a text&#39;s underlining and put this info into CSS instead of drawing of underlining graphically. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_la_te_x**
> AsposeResponse put_pdf_in_storage_to_la_te_x(name, out_path, opts)

Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.tex)

opts = { 
  pages_count: 56, # Integer | Pages count.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to LaTeX format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_la_te_x(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_la_te_x: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tex) | 
 **pages_count** | **Integer**| Pages count. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_mobi_xml**
> AsposeResponse put_pdf_in_storage_to_mobi_xml(name, out_path, opts)

Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.mobixml)

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to MOBIXML format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_mobi_xml(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_mobi_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.mobixml) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_pdf_a**
> AsposeResponse put_pdf_in_storage_to_pdf_a(name, out_path, type, opts)

Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pdf)

type = "type_example" # String | Type of PdfA format.

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to PdfA format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_pdf_a(name, out_path, type, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_pdf_a: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **type** | **String**| Type of PdfA format. | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_pptx**
> AsposeResponse put_pdf_in_storage_to_pptx(name, out_path, opts)

Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pptx)

opts = { 
  separate_images: true, # BOOLEAN | Separate images.
  slides_as_images: true, # BOOLEAN | Slides as images.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to PPTX format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_pptx(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_pptx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pptx) | 
 **separate_images** | **BOOLEAN**| Separate images. | [optional] 
 **slides_as_images** | **BOOLEAN**| Slides as images. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_svg**
> AsposeResponse put_pdf_in_storage_to_svg(name, out_path, opts)

Converts PDF document (located on storage) to SVG format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.svg)

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to SVG format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_svg(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_svg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.svg) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_tiff**
> AsposeResponse put_pdf_in_storage_to_tiff(name, out_path, opts)

Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.tiff)

opts = { 
  brightness: 1.2, # Float | Image brightness.
  compression: "compression_example", # String | Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None.
  color_depth: "color_depth_example", # String | Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp.
  left_margin: 56, # Integer | Left image margin.
  right_margin: 56, # Integer | Right image margin.
  top_margin: 56, # Integer | Top image margin.
  bottom_margin: 56, # Integer | Bottom image margin.
  orientation: "orientation_example", # String | Image orientation. Possible values are: None, Landscape, Portait.
  skip_blank_pages: true, # BOOLEAN | Skip blank pages flag.
  width: 56, # Integer | Image width.
  height: 56, # Integer | Image height.
  x_resolution: 56, # Integer | Horizontal resolution.
  y_resolution: 56, # Integer | Vertical resolution.
  page_index: 56, # Integer | Start page to export.
  page_count: 56, # Integer | Number of pages to export.
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to TIFF format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_tiff(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.tiff) | 
 **brightness** | **Float**| Image brightness. | [optional] 
 **compression** | **String**| Tiff compression. Possible values are: LZW, CCITT4, CCITT3, RLE, None. | [optional] 
 **color_depth** | **String**| Image color depth. Possible valuse are: Default, Format8bpp, Format4bpp, Format1bpp. | [optional] 
 **left_margin** | **Integer**| Left image margin. | [optional] 
 **right_margin** | **Integer**| Right image margin. | [optional] 
 **top_margin** | **Integer**| Top image margin. | [optional] 
 **bottom_margin** | **Integer**| Bottom image margin. | [optional] 
 **orientation** | **String**| Image orientation. Possible values are: None, Landscape, Portait. | [optional] 
 **skip_blank_pages** | **BOOLEAN**| Skip blank pages flag. | [optional] 
 **width** | **Integer**| Image width. | [optional] 
 **height** | **Integer**| Image height. | [optional] 
 **x_resolution** | **Integer**| Horizontal resolution. | [optional] 
 **y_resolution** | **Integer**| Vertical resolution. | [optional] 
 **page_index** | **Integer**| Start page to export. | [optional] 
 **page_count** | **Integer**| Number of pages to export. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xls**
> AsposeResponse put_pdf_in_storage_to_xls(name, out_path, opts)

Converts PDF document (located on storage) to XLS format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xls)

opts = { 
  insert_blank_column_at_first: true, # BOOLEAN | Insert blank column at first
  minimize_the_number_of_worksheets: true, # BOOLEAN | Minimize the number of worksheets
  scale_factor: 1.2, # Float | Scale factor
  uniform_worksheets: true, # BOOLEAN | Uniform worksheets
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to XLS format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_xls(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_xls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xls) | 
 **insert_blank_column_at_first** | **BOOLEAN**| Insert blank column at first | [optional] 
 **minimize_the_number_of_worksheets** | **BOOLEAN**| Minimize the number of worksheets | [optional] 
 **scale_factor** | **Float**| Scale factor | [optional] 
 **uniform_worksheets** | **BOOLEAN**| Uniform worksheets | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xml**
> AsposeResponse put_pdf_in_storage_to_xml(name, out_path, opts)

Converts PDF document (located on storage) to XML format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xml)

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to XML format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_xml(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xml) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_pdf_in_storage_to_xps**
> AsposeResponse put_pdf_in_storage_to_xps(name, out_path, opts)

Converts PDF document (located on storage) to XPS format and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.xps)

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document (located on storage) to XPS format and uploads resulting file to storage
  result = api_instance.put_pdf_in_storage_to_xps(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_pdf_in_storage_to_xps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.xps) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_privileges**
> AsposeResponse put_privileges(name, opts)

Update privilege document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  privileges: AsposePdfCloud::DocumentPrivilege.new, # DocumentPrivilege | Document privileges. 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Update privilege document.
  result = api_instance.put_privileges(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_privileges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **privileges** | [**DocumentPrivilege**](DocumentPrivilege.md)| Document privileges.  | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_ps_in_storage_to_pdf**
> AsposeResponse put_ps_in_storage_to_pdf(name, src_path, opts)

Convert PS file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.ps)

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert PS file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_ps_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_ps_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.ps) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_replace_image**
> ImageResponse put_replace_image(name, image_id, opts)

Replace document image.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

image_id = "image_id_example" # String | The image ID.

opts = { 
  image_file_path: "image_file_path_example", # String | Path to image file if specified. Request content is used otherwise.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  image: File.new("/path/to/file.txt") # File | Image file.
}

begin
  #Replace document image.
  result = api_instance.put_replace_image(name, image_id, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_replace_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **image_id** | **String**| The image ID. | 
 **image_file_path** | **String**| Path to image file if specified. Request content is used otherwise. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **image** | **File**| Image file. | [optional] 

### Return type

[**ImageResponse**](ImageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_searchable_document**
> AsposeResponse put_searchable_document(name, opts)

Create searchable PDF document. Generate OCR layer for images in input PDF document.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example", # String | The document folder.
  lang: "lang_example" # String | language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus 
}

begin
  #Create searchable PDF document. Generate OCR layer for images in input PDF document.
  result = api_instance.put_searchable_document(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_searchable_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 
 **lang** | **String**| language for OCR engine. Possible values: eng, ara, bel, ben, bul, ces, dan, deu, ell, fin, fra, heb, hin, ind, isl, ita, jpn, kor, nld, nor, pol, por, ron, rus, spa, swe, tha, tur, ukr, vie, chi_sim, chi_tra or thier combination e.g. eng,rus  | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_set_property**
> DocumentPropertyResponse put_set_property(name, property_name, value, opts)

Add/update document property.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | 

property_name = "property_name_example" # String | 

value = "value_example" # String | 

opts = { 
  storage: "storage_example", # String | 
  folder: "folder_example" # String | 
}

begin
  #Add/update document property.
  result = api_instance.put_set_property(name, property_name, value, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_set_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **property_name** | **String**|  | 
 **value** | **String**|  | 
 **storage** | **String**|  | [optional] 
 **folder** | **String**|  | [optional] 

### Return type

[**DocumentPropertyResponse**](DocumentPropertyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_svg_in_storage_to_pdf**
> AsposeResponse put_svg_in_storage_to_pdf(name, src_path, opts)

Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.svg)

opts = { 
  adjust_page_size: true, # BOOLEAN | Adjust page size
  height: 1.2, # Float | Page height
  width: 1.2, # Float | Page width
  is_landscape: true, # BOOLEAN | Is page landscaped
  margin_left: 1.2, # Float | Page margin left
  margin_bottom: 1.2, # Float | Page margin bottom
  margin_right: 1.2, # Float | Page margin right
  margin_top: 1.2, # Float | Page margin top
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert SVG file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_svg_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_svg_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.svg) | 
 **adjust_page_size** | **BOOLEAN**| Adjust page size | [optional] 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_text_annotation**
> TextAnnotationResponse put_text_annotation(name, annotation_id, annotation, opts)

Replace document text annotation

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

annotation_id = "annotation_id_example" # String | The annotation ID.

annotation = AsposePdfCloud::TextAnnotation.new # TextAnnotation | Annotation.

opts = { 
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Replace document text annotation
  result = api_instance.put_text_annotation(name, annotation_id, annotation, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_text_annotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **annotation_id** | **String**| The annotation ID. | 
 **annotation** | [**TextAnnotation**](TextAnnotation.md)| Annotation. | 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**TextAnnotationResponse**](TextAnnotationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_update_field**
> FieldResponse put_update_field(name, field_name, opts)

Update field.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

field_name = "field_name_example" # String | The name of a field to be updated.

opts = { 
  field: AsposePdfCloud::Field.new, # Field | with the field data.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Update field.
  result = api_instance.put_update_field(name, field_name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_update_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **field_name** | **String**| The name of a field to be updated. | 
 **field** | [**Field**](Field.md)| with the field data. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldResponse**](FieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_update_fields**
> FieldsResponse put_update_fields(name, opts)

Update fields.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

opts = { 
  fields: AsposePdfCloud::Fields.new, # Fields | with the fields data.
  storage: "storage_example", # String | The document storage.
  folder: "folder_example" # String | The document folder.
}

begin
  #Update fields.
  result = api_instance.put_update_fields(name, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_update_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **fields** | [**Fields**](Fields.md)| with the fields data. | [optional] 
 **storage** | **String**| The document storage. | [optional] 
 **folder** | **String**| The document folder. | [optional] 

### Return type

[**FieldsResponse**](FieldsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_web_in_storage_to_pdf**
> AsposeResponse put_web_in_storage_to_pdf(name, url, opts)

Convert web page to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

url = "url_example" # String | Source url

opts = { 
  height: 1.2, # Float | Page height
  width: 1.2, # Float | Page width
  is_landscape: true, # BOOLEAN | Is page landscaped
  margin_left: 1.2, # Float | Page margin left
  margin_bottom: 1.2, # Float | Page margin bottom
  margin_right: 1.2, # Float | Page margin right
  margin_top: 1.2, # Float | Page margin top
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert web page to PDF format and upload resulting file to storage. 
  result = api_instance.put_web_in_storage_to_pdf(name, url, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_web_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **url** | **String**| Source url | 
 **height** | **Float**| Page height | [optional] 
 **width** | **Float**| Page width | [optional] 
 **is_landscape** | **BOOLEAN**| Is page landscaped | [optional] 
 **margin_left** | **Float**| Page margin left | [optional] 
 **margin_bottom** | **Float**| Page margin bottom | [optional] 
 **margin_right** | **Float**| Page margin right | [optional] 
 **margin_top** | **Float**| Page margin top | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xfa_pdf_in_request_to_acro_form**
> AsposeResponse put_xfa_pdf_in_request_to_acro_form(out_path, opts)

Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pdf)

opts = { 
  storage: "storage_example", # String | The document storage.
  file: File.new("/path/to/file.txt") # File | A file to be converted.
}

begin
  #Converts PDF document which contatins XFA form (in request content) to PDF with AcroForm and uploads resulting file to storage.
  result = api_instance.put_xfa_pdf_in_request_to_acro_form(out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_xfa_pdf_in_request_to_acro_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **storage** | **String**| The document storage. | [optional] 
 **file** | **File**| A file to be converted. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **put_xfa_pdf_in_storage_to_acro_form**
> AsposeResponse put_xfa_pdf_in_storage_to_acro_form(name, out_path, opts)

Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

out_path = "out_path_example" # String | Full resulting filename (ex. /folder1/folder2/result.pdf)

opts = { 
  folder: "folder_example", # String | The document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Converts PDF document which contatins XFA form (located on storage) to PDF with AcroForm and uploads resulting file to storage
  result = api_instance.put_xfa_pdf_in_storage_to_acro_form(name, out_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_xfa_pdf_in_storage_to_acro_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **out_path** | **String**| Full resulting filename (ex. /folder1/folder2/result.pdf) | 
 **folder** | **String**| The document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xml_in_storage_to_pdf**
> AsposeResponse put_xml_in_storage_to_pdf(name, src_path, opts)

Convert XML file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.xml)

opts = { 
  xsl_file_path: "xsl_file_path_example", # String | Full XSL source filename (ex. /folder1/folder2/template.xsl)
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert XML file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_xml_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_xml_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xml) | 
 **xsl_file_path** | **String**| Full XSL source filename (ex. /folder1/folder2/template.xsl) | [optional] 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xps_in_storage_to_pdf**
> AsposeResponse put_xps_in_storage_to_pdf(name, src_path, opts)

Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.xps)

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert XPS file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_xps_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_xps_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xps) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_xsl_fo_in_storage_to_pdf**
> AsposeResponse put_xsl_fo_in_storage_to_pdf(name, src_path, opts)

Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 

### Example
```ruby
# load the gem
require 'aspose_pdf_cloud'

api_instance = AsposePdfCloud::PdfApi.new

name = "name_example" # String | The document name.

src_path = "src_path_example" # String | Full source filename (ex. /folder1/folder2/template.xpsfo)

opts = { 
  dst_folder: "dst_folder_example", # String | The destination document folder.
  storage: "storage_example" # String | The document storage.
}

begin
  #Convert XslFo file (located on storage) to PDF format and upload resulting file to storage. 
  result = api_instance.put_xsl_fo_in_storage_to_pdf(name, src_path, opts)
  p result
rescue AsposePdfCloud::ApiError => e
  puts "Exception when calling PdfApi->put_xsl_fo_in_storage_to_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The document name. | 
 **src_path** | **String**| Full source filename (ex. /folder1/folder2/template.xpsfo) | 
 **dst_folder** | **String**| The destination document folder. | [optional] 
 **storage** | **String**| The document storage. | [optional] 

### Return type

[**AsposeResponse**](AsposeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



