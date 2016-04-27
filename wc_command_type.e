note
	description: "[
		Abstract notion of a {WC_COMMAND_TYPE}
		]"
	design_intent: "[
		A type of page that provides information processing to its Client.
		You may think of this as the notion of "Command" in the CQS model.
		
		{WC_TASK_FACILITATOR} is a form of {WC_COMMAND_TYPE}. The notion
		of "task" is the notion of "command" in classic CQS modelling.
		
		See EIS link below, Chapter 2, page 26
		
		"This list mirrors some of the work done by Theresa Neil with application structures in the
		context of rich Internet applications (RIAs). She defines three types of structures based on
		the user’s primary goal: information, process, and creation.(1)"
		]"
	EIS: "src=http://internativa.com.br/mobile/Livro - Designing Interfaces, 2nd Edition, 2010.pdf"
	EIS: "src=https://en.wikipedia.org/wiki/Rich_Internet_application"
	EIS: "name=(1) Rich Internet Screen Design",
			"src=http://www.uxmag.com/design/rich-internet-applicationscreen-design"

deferred class
	WC_COMMAND_TYPE

inherit
	WC_PAGE_TYPE

note
	design: "[
		Facilitate a Single Task

		Maybe your interface’s job isn’t to show a list of anything or create anything, but simply to
		get a job done. Signing in, registering, posting, printing, uploading, purchasing, changing
		a setting—all such tasks fall into this category.

		Forms do a lot of work here. Chapter 8 talks about forms at length and lists many controls
		and patterns to support effective forms. Chapter 6 defines another useful set of patterns
		that concentrate more on “verbs” than “nouns.”
		]"

end
