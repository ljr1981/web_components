note
	description: "Tests of {WEB_COMPONENTS}."
	testing: "type/manual"

class
	WEB_COMPONENTS_TEST_SET

inherit
	EQA_TEST_SET
		rename
			assert as assert_old
		end

	EQA_COMMONLY_USED_ASSERTIONS
		undefine
			default_create
		end

	TEST_SET_BRIDGE
		undefine
			default_create
		end

	HTML_FACTORY
		undefine
			default_create
		end

feature -- Test routines

	web_components_tests
			-- `web_components_tests'
		local
			l_any: WC_ANY
			l_photo_container: WC_PHOTO_CONTAINER
			l_photo: WC_PHOTO
			l_img: HTML_IMG
			l_photo_menu: WC_PHOTO_MENU
			l_upper: WC_PHOTO_UPPER_MENU
			l_lower: WC_PHOTO_LOWER_MENU
		do
			create l_photo_container
				-- Photo1
			create l_photo
			l_photo_container.extend (l_photo)
			create l_img.make_with_src ("http://placehold.it/400")
			l_photo.extend_image (l_img)
			create l_photo_menu
			l_photo.extend_photo_menu (l_photo_menu)
			create l_upper
			l_photo_menu.extend_upper_menu (l_upper)
			create l_lower
			l_photo_menu.extend_lower_menu (l_lower)
			l_lower.extend (new_div)
			last_new_div.set_class_names ("all")
			l_lower.extend (new_div)
			last_new_div.set_class_names ("link")
			l_lower.extend (new_div)
			last_new_div.set_class_names ("info")
			l_lower.extend (new_div)
			last_new_div.set_class_names ("like")

			assert_strings_equal ("photo_container_1", photo_container_1_string, l_photo_container.html_out)
		end

feature {NONE} -- Support

	photo_container_1_string: STRING = "[
<div class="photo-container"><div class="photo"><img src="http://placehold.it/400"/><div class="photo-menu"><div class="upper-menu"></div><div class="lower-menu"><div class="all"></div><div class="link"></div><div class="info"></div><div class="like"></div></div></div></div></div>
]"

end
