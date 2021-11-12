# -*- encoding: utf-8 -*-
#
=begin
--------------------------------------------------------------------------------------------------------------------
Copyright (c) 2021 Aspose.PDF Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--------------------------------------------------------------------------------------------------------------------
=end

$:.push File.expand_path("../lib", __FILE__)
require "aspose_pdf_cloud/version"

files = `git ls-files`.split("\n")
files.delete('.gitignore')
files.delete('.swagger-codegen-ignore')

Gem::Specification.new do |s|
  s.name        = "aspose_pdf_cloud"
  s.version     = AsposePdfCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aspose PDF Cloud"]
  s.email       = [""]
  s.homepage    = "https://products.aspose.cloud/pdf/cloud"
  s.summary     = %q{Aspose.PDF Cloud}
  s.description = "New version of Aspose.PDF Cloud is a REST API for creating and editing PDF files. It can also be used to convert PDF files to different formats like DOC, HTML, XPS, TIFF and many more. Aspose.PDF Cloud gives you control: create PDFs from scratch or from HTML, XML, template, database, XPS or an image. Render PDFs to image formats such as JPEG, PNG, GIF, BMP, TIFF and many others.\nAspose.PDF Cloud helps you manipulate elements of a PDF file like text, annotations, watermarks, signatures, bookmarks, stamps and so on. Its REST API also allows you to manage PDF pages by using features like merging, splitting, and inserting. Add images to a PDF file or convert PDF pages to images.\nAspose.PDF Cloud is well documented to help you create your solutions on different platforms.\nhttps://products.aspose.cloud/pdf/family/\nRich Set of Features\nAspose.PDF Cloud features can be divided into three main areas:\nConversions: High quality conversions PDF to formats XLS, XLSX, PPTX, DOC, DOCX, EPUB, HTML, TeX, MobiXML, XML, XPS, FDF, XFDF, PDF/A\nRendering: Convert whole documents or pages to PDF, XPS or for server-side document generation. Also convert document pages to SVG, JPEG, EMF, PNG, BMP, GIF, TIFF images.\nDocument Object Model: Programmatic access through a rich API to all document elements allows to create, modify, extract, copy, split, join, and replace document content.\nAspose.PDF Cloud is designed to perform great. You can literally generate thousands of documents in minutes with Aspose.PDF Cloud and that involves opening a document, modifying content and formatting or populating it with data and saving it. Even most of the complex documents are opened and saved in fractions of a second.\nFree support for Aspose.PDF Cloud is provided on our support forum:\nhttps://forum.aspose.cloud/\nand on StackOverflow:\nhttps://stackoverflow.com/questions/tagged/aspose.pdf"
  s.license     = "MIT"

  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'json', '>= 2.3.0'
  s.add_runtime_dependency 'faraday', '~> 0.14.0'
  
  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = files
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
