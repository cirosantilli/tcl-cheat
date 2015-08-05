.POSIX:

OUT_EXT := .tcl

.PHONY: test

# TODO: replace with a TCL script.

test:
	@\
	fail=false;\
	for t in *"$(OUT_EXT)"; do\
	  if ! ./"$$t"; then\
	    fail=true;\
	    break;\
	  fi;\
	done;\
	if $$fail; then\
	  echo "ASSERT FAILED: $$t";\
	  exit 1;\
	else\
	  echo 'ALL ASSERTS PASSED';\
	  exit 0;\
	fi;\
