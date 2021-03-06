﻿# AsposePdfCloud::ListBoxField
Provides ListBoxField.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Array&lt;Link&gt;**](Link.md) | Link to the document. | [optional] 
**partial_name** | **String** | Field name. | [optional] 
**full_name** | **String** | Full Field name. | [optional] 
**rect** | [**Rectangle**](Rectangle.md) | Field rectangle. | [optional] 
**value** | **String** | Field value. | [optional] 
**page_index** | **Integer** | Page index. | 
**height** | **Float** | Gets or sets height of the field. | [optional] 
**width** | **Float** | Gets or sets width of the field. | [optional] 
**z_index** | **Integer** | Z index. | [optional] 
**is_group** | **BOOLEAN** | Is group. | [optional] 
**parent** | [**FormField**](FormField.md) | Gets field parent. | [optional] 
**is_shared_field** | **BOOLEAN** | Property for Generator support. Used when field is added to header or footer. If true, this field will created once and it&#39;s appearance will be visible on all pages of the document. If false, separated field will be created for every document page. | [optional] 
**flags** | [**Array&lt;AnnotationFlags&gt;**](AnnotationFlags.md) | Gets Flags of the field. | [optional] 
**color** | [**Color**](Color.md) | Color of the annotation. | [optional] 
**contents** | **String** | Get the field content. | [optional] 
**margin** | [**MarginInfo**](MarginInfo.md) | Gets or sets a outer margin for paragraph (for pdf generation) | [optional] 
**highlighting** | [**LinkHighlightingMode**](LinkHighlightingMode.md) | Field highlighting mode. | [optional] 
**horizontal_alignment** | [**HorizontalAlignment**](HorizontalAlignment.md) | Gets HorizontalAlignment of the field. | [optional] 
**vertical_alignment** | [**VerticalAlignment**](VerticalAlignment.md) | Gets VerticalAlignment of the field. | [optional] 
**border** | [**Border**](Border.md) | Gets or sets annotation border characteristics. | [optional] 
**multi_select** | **BOOLEAN** | Gets or sets multiselection flag. | [optional] 
**selected** | **Integer** | Gets or sets index of selected item. Numbering of items is started from 1. | [optional] 
**options** | [**Array&lt;Option&gt;**](Option.md) | Gets collection of options of the listbox. | [optional] 
**active_state** | **String** | Gets or sets current annotation appearance state. | [optional] 
**top_index** | **Integer** | Gets or sets index of the top visible element of the list. | [optional] 
**selected_items** | **Array&lt;Integer&gt;** | Gets or sets array of the selected items in the multiselect list. For single-select list returns array with single item. | [optional] 


