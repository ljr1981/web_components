note
	description: "[
		Representation of Documentation as {WC_DOCS}.
		]"

class
	WC_DOCS

feature

	documentation: detachable like Current
			-- `documentation' of Current {WC_DOCS}.

;note
	the_big_picture: "[
		{WC_PAGE_THING} evolves to do one of the following:
			
			{WC_PAGE_AS_ITEM}—A page with a single item (map book, video, game, or article)
			{WC_PAGE_AS_ITEM_SET}—A page with a set of things (e.g. items)
			{WC_PAGE_AS_CREATOR}—A page providing capacity to create a thing
			{WC_TASK_FACILITATOR}—A page that facilitates a particular task

		]"

end
