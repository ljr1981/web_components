note
	description: "[
		Abstract notion of a {WC_CREATION_TYPE}
		]"
	design_intent: "[
		A type of page providing creation procedures to its Client.
		You may think of this as the notion of "Creation Procedure" in OO Theory.
		]"

class
	WC_CREATION_TYPE

inherit
	WC_PAGE_TYPE

note
	design: "[
		Provide Tools to Create a Thing
		
		Builders and editors are the great dynastic families of the software world. Microsoft
		Word, Excel, PowerPoint, and other Office applications, in addition to Adobe Photoshop,
		Illustrator, In Design, Dreamweaver, and other tools that support designers are all in this
		category. So are the tools that support software engineers, such as the various code editors
		and integrated development environments. These have long histories, large user bases,
		and very well established interaction styles, honed over many years.

		But at the level of application structure or IA, the following patterns are often
		found:

		• Canvas Plus Palette describes most of these applications. This highly recognizable,
			well-established pattern for visual editors sets user expectations very strongly.
		• Almost all applications of this type provide Many Workspaces—usually windows containing
			different documents, which enable users to work on them in parallel.
			The Patterns 29
		• Alternative Views let users see one document or workspace through different lenses, to
			view various aspects of the thing they’re creating.
		• “Blank Slate Invitation” is named and written about in Designing Web Interfaces
			(http://oreilly.com/catalog/9780596516253/) by Bill Scott and Theresa Neil (O’Reilly),
			and is a profoundly useful pattern for builders and editors. It is closely related to the
			Input Hints pattern in Chapter 8.
		]"
	EIS: "src=http://internativa.com.br/mobile/Livro - Designing Interfaces, 2nd Edition, 2010.pdf"

end
