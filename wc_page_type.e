note
	description: "[
		Abstract notion of a {WC_PAGE_TYPE}
		]"
	design_intent: "[
		{WC_PAGE_TYPE} evolves to do one of the following:
			{WC_COMMAND_TYPE}—Pages that process information
			{WC_QUERY_TYPE}—Pages that present information
			{WC_CREATION_TYPE}—Pages that create information
			]"

deferred class
	WC_PAGE_TYPE

inherit
	WC_ANY

end
