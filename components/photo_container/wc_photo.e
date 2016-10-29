note
	EIS: "name=js_fiddle_photo_container",
			"src=http://jsfiddle.net/maunovaha/evj6Leru/"

class
	WC_PHOTO

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
			set_class_names ("photo")
			body_scripts.force (create {HTML_SCRIPT}.make_with_content (<<create {HTML_TEXT}.make_with_text (css_script)>>))
		end

feature -- Access

	image: HTML_IMG
		attribute
			create Result
		end

	photo_menu: WC_PHOTO_MENU
		attribute
			create Result
		end

feature -- Setters

	extend_image (a_image: HTML_IMG)
			--
		do
			image := a_image
			extend (a_image)
		end

	extend_photo_menu (a_photo_menu: WC_PHOTO_MENU)
			--
		do
			photo_menu := a_photo_menu
			extend (a_photo_menu)
		end

feature {NONE} -- Implementation

	css_script: STRING = "[
.photo {
    float: left;
    width: 400px;
}

.photo:hover {
	display: block;
	opacity: 0.6;
}
]"

end
