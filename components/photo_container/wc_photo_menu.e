note
	EIS: "name=js_fiddle_photo_container",
			"src=http://jsfiddle.net/maunovaha/evj6Leru/"

class
	WC_PHOTO_MENU

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
			set_class_names ("photo-menu")
			body_scripts.force (create {HTML_SCRIPT}.make_with_content (<<create {HTML_TEXT}.make_with_text (css_script)>>))
		end

feature -- Access

	upper_menu: WC_PHOTO_UPPER_MENU
		attribute
			create Result
		end

	lower_menu: WC_PHOTO_LOWER_MENU
		attribute
			create Result
		end

feature -- Setters

	extend_upper_menu (a_menu: like upper_menu)
			--
		do
			upper_menu := a_menu
			extend (a_menu)
		end

	extend_lower_menu (a_menu: like lower_menu)
			--
		do
			lower_menu := a_menu
			extend (a_menu)
		end

feature {NONE} -- Implementation

	css_script: STRING = "[
.photo, .photo-menu {
    width: 400px;
    height: 300px;
}

.photo-menu {
    position: relative;
    left: 0px;
    top: -300px;
}

.photo .photo-menu {
    display: none;
}

.photo:hover .photo-menu {
    display: block;
}

]"

end
