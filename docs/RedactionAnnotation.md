# AsposePdfCloud::RedactionAnnotation
Provides RedactionAnnotation.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Array&lt;Link&gt;**](Link.md) | Link to the document. | [optional] 
**color** | [**Color**](Color.md) | Color of the annotation. | [optional] 
**contents** | **String** | Get the annotation content. | [optional] 
**modified** | **String** | The date and time when the annotation was last modified. | [optional] 
**id** | **String** | Gets ID of the annotation. | [optional] 
**flags** | [**Array&lt;AnnotationFlags&gt;**](AnnotationFlags.md) | Gets Flags of the annotation. | [optional] 
**name** | **String** | Gets Name of the annotation. | [optional] 
**rect** | [**Rectangle**](Rectangle.md) | Gets Rect of the annotation. | 
**page_index** | **Integer** | Gets PageIndex of the annotation. | [optional] 
**z_index** | **Integer** | Gets ZIndex of the annotation. | [optional] 
**horizontal_alignment** | [**HorizontalAlignment**](HorizontalAlignment.md) | Gets HorizontalAlignment of the annotation. | [optional] 
**vertical_alignment** | [**VerticalAlignment**](VerticalAlignment.md) | Gets VerticalAlignment of the annotation. | [optional] 
**quad_point** | [**Array&lt;Point&gt;**](Point.md) | An array of 8xN numbers specifying the coordinates of content region that is intended to be removed.  | [optional] 
**fill_color** | [**Color**](Color.md) | Gets or sets color to fill annotation. | [optional] 
**border_color** | [**Color**](Color.md) | Gets or sets color of border which is drawn when redaction is not active. | [optional] 
**overlay_text** | **String** | Text to print on redact annotation. | [optional] 
**repeat** | **BOOLEAN** | If true overlay text will be repeated on the annotation.  | [optional] 
**text_alignment** | [**HorizontalAlignment**](HorizontalAlignment.md) | Gets or sets. Alignment of Overlay Text. | [optional] 


