test: test_linting test_gap

test_gap:
	gap ./tst/testall.g

test_linting:
	find . -type f -name "*.g" | xargs -n1 gaplint
	find . -type f -name "*.gi" | xargs -n1 gaplint
	find . -type f -name "*.gd" | xargs -n1 gaplint