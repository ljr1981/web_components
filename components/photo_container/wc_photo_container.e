note
	EIS: "name=js_fiddle_photo_container",
			"src=http://jsfiddle.net/maunovaha/evj6Leru/"
class
	WC_PHOTO_CONTAINER

inherit
	HTML_DIV
		redefine
			default_create
		end

	WC_ANY
		rename
			documentation as documentation_wc
		undefine
			default_create,
			out
		end

feature {NONE} -- Initialization

	default_create
			-- <Precursor>
		do
			set_class_names ("photo-container")
			body_scripts.force (create {HTML_SCRIPT}.make_with_content (<<create {HTML_TEXT}.make_with_text (css_script)>>))
		end

feature {NONE} -- Implementation

	css_script: STRING = "[
body {
    margin: 0px;
    padding: 0px;
}

.photo-container {
    width: 800px;
}
]"

end
