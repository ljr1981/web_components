note
	description: "[
		Abstract notion of a {WC_ITEM_SET}
		]"
	design_intent: "[
		{WC_ITEM_SET}—A page with a set (list) of things (e.g. items)
		]"

deferred class
	WC_ITEM_SET

inherit
	WC_QUERY_TYPE

note
	design: "[
		This is what most of the world’s digital artifacts seem to do. Lists are everywhere! The
		digital world has converged on many common idioms for showing lists, most of which
		are familiar to you—simple text lists, menus, grids of images, search results, lists of email
		messages or other communications, tables, trees. There are more, of course.
		
		Lists present rich challenges in information architecture. 
			
			How long is the list? 
			Is it flat or hierarchical, and if hierarchical, what kind? 
			How is it ordered? 
			Can the user change that ordering dynamically? 
			Should it be filtered or searched? 
			What information or operations are associated with each list item?
			When and how should they be shown?
		
		Other top-level organizations not listed here might include calendars, 
		full-page menus, and search results.
		
		• "Feature, Search, and Browse" is the PATTERN followed by countless websites that show
			products and written content. Searching and browsing provide two ways for users to
			find items of interest, while the front page features one item to attract interest.
		• "Blogs, news sites, email readers, and social sites" such as Twitter all use the "News Stream"
			PATTERN to list their content, with the most recent updates at the top.
		• "Picture Manager" is a well-defined interface type PATTERN for handling photos and other pictorial
			documents. It can accommodate hierarchies and flat lists, tools to arrange and
			reorder documents, tools to operate directly on pictures, and so on.
		]"

end
