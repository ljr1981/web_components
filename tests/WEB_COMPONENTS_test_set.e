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

feature -- Test routines

	WEB_COMPONENTS_tests
			-- `WEB_COMPONENTS_tests'
		do
			do_nothing -- yet ...
		end

end
