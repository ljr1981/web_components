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
			l_placeholder: WC_PHOTO_LOWER_PLACEHOLDER
			l_body_scripts: ARRAYED_LIST [HTML_SCRIPT]
			l_body_scripts_text: STRING
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

			create l_placeholder; l_placeholder.set_body_script ("all")
			l_lower.extend_placeholder (l_placeholder)
			create l_placeholder; l_placeholder.set_body_script ("link")
			l_lower.extend_placeholder (l_placeholder)
			create l_placeholder; l_placeholder.set_body_script ("info")
			l_lower.extend_placeholder (l_placeholder)
			create l_placeholder; l_placeholder.set_body_script ("like")
			l_lower.extend_placeholder (l_placeholder)

			assert_strings_equal ("photo_container_1", photo_container_1_string, l_photo_container.html_out)

			create l_body_scripts.make (10)
			l_photo_container.add_body_scripts (l_body_scripts)
			create l_body_scripts_text.make_empty
			across
				l_body_scripts as ic
			loop
				l_body_scripts_text.append_string_general (ic.item.html_out)
				l_body_scripts_text.append_character ('%N')
			end

			assert_strings_equal ("body_scripts_1", body_scripts_1_string, l_body_scripts_text)
		end

feature {NONE} -- Support

	photo_container_1_string: STRING = "[
<div class="photo-container"><div class="photo"><img src="http://placehold.it/400"/><div class="photo-menu"><div class="upper-menu"></div><div class="lower-menu"><div class="all"></div><div class="link"></div><div class="info"></div><div class="like"></div></div></div></div></div>
]"
		--<div class="photo-container">
		--    <div class="photo">
		--    	<img src="http://placehold.it/400" />
		--        <div class="photo-menu">
		--            <div class="upper-menu"></div>
		--            <div class="lower-menu">
		--                <div class="all"></div>
		--                <div class="link"></div>
		--                <div class="info"></div>
		--                <div class="like"></div>
		--            </div>
		--        </div>
		--    </div>
		--</div>

	body_scripts_1_string: STRING = "[
<script>body {
    margin: 0px;
    padding: 0px;
}

.photo-container {
    width: 800px;
}</script>
<script>.photo {
    float: left;
    width: 400px;
}

.photo:hover {
	display: block;
	opacity: 0.6;
}</script>
<script>.photo, .photo-menu {
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
</script>
<script>.photo-menu .upper-menu {
    background-image: url("http://www.kolazhgostar.com/images/small-img05.png");
	background-repeat: no-repeat;
    background-position: center;
	width: inherit;
	height: 200px;
    margin: 0 auto;
}
</script>
<script>.photo-menu .lower-menu {
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
</script>
<script>.photo-menu .lower-menu .all {	
	background-image: url("http://placehold.it/40/ff0000");
}</script>
<script>.photo-menu .lower-menu .link {	
	background-image: url("http://placehold.it/40/ff0000");
}</script>
<script>.photo-menu .lower-menu .info {	
	background-image: url("http://placehold.it/40/ff0000");
}</script>
<script>.photo-menu .lower-menu .like {	
	background-image: url("http://placehold.it/40/ff0000");
}</script>

]"

end
