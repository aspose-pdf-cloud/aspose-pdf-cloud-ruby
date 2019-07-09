# AsposePdfCloud::Bookmark
Provides link to bookmark.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**Array&lt;Link&gt;**](Link.md) | Link to the document. | [optional] 
**title** | **String** | Get the Title; | [optional] 
**italic** | **BOOLEAN** | Is bookmark italic. | [optional] 
**bold** | **BOOLEAN** | Is bookmark bold. | [optional] 
**color** | [**Color**](Color.md) | Get the color | [optional] 
**action** | **String** | Gets or sets the action bound with the bookmark. If PageNumber is presented the action can not be specified. The action type includes: &quot;GoTo&quot;, &quot;GoToR&quot;, &quot;Launch&quot;, &quot;Named&quot;. | [optional] 
**level** | **Integer** | Gets or sets bookmark&#39;s hierarchy level. | [optional] 
**destination** | **String** | Gets or sets bookmark&#39;s destination page. Required if action is set as string.Empty. | [optional] 
**page_display** | **String** | Gets or sets the type of display bookmark&#39;s destination page. | [optional] 
**page_display_bottom** | **Integer** | Gets or sets the bottom coordinate of page display. | [optional] 
**page_display_left** | **Integer** | Gets or sets the left coordinate of page display. | [optional] 
**page_display_right** | **Integer** | Gets or sets the right coordinate of page display. | [optional] 
**page_display_top** | **Integer** | Gets or sets the top coordinate of page display. | [optional] 
**page_display_zoom** | **Integer** | Gets or sets the zoom factor of page display. | [optional] 
**page_number** | **Integer** | Gets or sets the number of bookmark&#39;s destination page.  | [optional] 
**remote_file** | **String** | Gets or sets the file (path) which is required for &quot;GoToR&quot; action of bookmark. | [optional] 
**bookmarks** | [**Bookmarks**](Bookmarks.md) | The children bookmarks. | [optional] 


