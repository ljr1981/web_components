note
	EIS: "name=js_fiddle_photo_container",
			"src=http://jsfiddle.net/maunovaha/evj6Leru/"

class
	WC_PHOTO_LOWER_MENU

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
			set_class_names ("lower-menu")
			body_scripts.force (create {HTML_SCRIPT}.make_with_content (<<create {HTML_TEXT}.make_with_text (css_script)>>))
		end

feature -- Setters

	placeholders: ARRAYED_LIST [WC_PHOTO_LOWER_PLACEHOLDER]
			--
		attribute
			create Result.make (4)
		end

	extend_placeholder (a_item: WC_PHOTO_LOWER_PLACEHOLDER)
			--
		do
			placeholders.extend (a_item)
			extend (a_item)
		end

feature {NONE} -- Implementation

	css_script: STRING = "[
.photo-menu .lower-menu {
	width: 280px;
    margin: 0 auto;
	height: 100px;
}

.photo-menu .lower-menu div {
    min-width: 40px;
	width: 24.9999%;
    height: 40px;
    background-repeat: no-repeat;
    background-position: center;
    float: left;
}

]"

end
