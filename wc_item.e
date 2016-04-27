note
	description: "[
		Abstract notion of a {WC_ITEM}
		]"
	design_intent: "[
		{WC_ITEM}—A page with a single item (map book, video, game, or article)
		
		See notes at the bottom of this class.
		]"

deferred class
	WC_ITEM

inherit
	WC_QUERY_TYPE

note
	design: "[
		As you design this interface, consider the following patterns and techniques to support
		the design:
		
		• Alternative Views, to show the content in more than one way.
		• Many Workspaces, in case people want to see more than one place, state, or document
			at one time.
		• Deep-linked State, in Chapter 3. With this, a user can save a certain place or state
			within the content so that he can come back to it later or send someone else a URL.
		• Sharing Widget and other social patterns, in Chapter 9.
		• Some of the mobile patterns described in Chapter 10, if one of your design goals is to
			deliver the content on mobile devices.
		]"
	EIS: "src=http://internativa.com.br/mobile/Livro - Designing Interfaces, 2nd Edition, 2010.pdf"

end
