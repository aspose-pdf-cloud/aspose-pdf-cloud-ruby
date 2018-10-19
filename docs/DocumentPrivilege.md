# AsposePdfCloud::DocumentPrivilege
Represents the privileges for accessing Pdf file./>.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_print** | **BOOLEAN** | Sets the permission which allow print or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_degraded_printing** | **BOOLEAN** | Sets the permission which allow degraded printing or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_modify_contents** | **BOOLEAN** | Sets the permission which allow modify contents or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_copy** | **BOOLEAN** | Sets the permission which allow copy or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_modify_annotations** | **BOOLEAN** | Sets the permission which allow modify annotations or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_fill_in** | **BOOLEAN** | Sets the permission which allow fill in forms or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_screen_readers** | **BOOLEAN** | Sets the permission which allow screen readers or not.  true is allow and false or not set is forbidden. | [optional] 
**allow_assembly** | **BOOLEAN** | Sets the permission which allow assembly or not.  true is allow and false or not set is forbidden. | [optional] 
**print_allow_level** | **Integer** | Sets the print level of  document&#39;s privilege. Just as the Adobe Professional&#39;s Printing Allowed settings. 0: None. 1: Low Resolution (150 dpi). 2: High Resolution. | [optional] 
**change_allow_level** | **Integer** | Sets the change level of  document&#39;s privilege. Just as the Adobe Professional&#39;s Changes Allowed settings. 0: None. 1: Inserting, Deleting and Rotating pages. 2: Filling in form fields and signing existing signature fields. 3: Commenting, filling in form fields, and signing existing signature fields. 4: Any except extracting pages. | [optional] 
**copy_allow_level** | **Integer** | Sets the copy level of  document&#39;s privilege. Just as the Adobe Professional&#39;s permission settings. 0: None. 1: Enable text access for screen reader devices for the visually impaired. 2: Enable copying of text, images and other content. | [optional] 


