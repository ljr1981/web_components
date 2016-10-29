note
	EIS: "name=js_fiddle_photo_container",
			"src=http://jsfiddle.net/maunovaha/evj6Leru/"

class
	WC_PHOTO_LOWER_PLACEHOLDER

inherit
	HTML_DIV

	WC_ANY
		rename
			documentation as documentation_wc
		undefine
			default_create,
			out
		end

feature -- Setters

	set_body_script (a_class_name: STRING)
			--
		require
			empty_body_scripts: body_scripts.is_empty
		local
			l_css_script: STRING
			l_script_text: HTML_TEXT
		do
			set_class_names (a_class_name)
			l_css_script := css_script.twin
			l_css_script.replace_substring_all ("<<CLASS_NAME>>", a_class_name)
			create script_text.make_with_text (l_css_script)
			body_scripts.force (script_tag)
		ensure
			one_body_script: not body_scripts.is_empty
		end

feature -- Access

	script_tag: HTML_SCRIPT
		do
			create Result.make_with_content (<<script_text>>)
		end

	script_text: HTML_TEXT
		attribute
			create Result
		end

feature {NONE} -- Implementation

	css_script: STRING = "[
.photo-menu .lower-menu .<<CLASS_NAME>> {	
	background-image: url("http://placehold.it/40/ff0000");
}
]"

end
