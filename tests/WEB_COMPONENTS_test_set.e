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

	web_components_tests
			-- `web_components_tests'
		local
			l_any: WC_ANY
			l_page_thing: WC_PAGE_TYPE
			l_item: WC_ITEM
			l_item_set: WC_ITEM_SET
			l_creator: WC_CREATOR
			l_task: WC_TASK_FACILITATOR
			l_command: WC_COMMAND_TYPE
			l_query: WC_QUERY_TYPE
			l_creation_procedure: WC_CREATION_TYPE
		do
			do_nothing -- yet ...
		end

end
