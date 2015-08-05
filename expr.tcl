#!/usr/bin/env tclsh

source {shared.tcl}

## expr

    # http://www.tcl.tk/man/tcl/TclCmd/expr.htm

    # `expr` takes either:

    # - a single string to evaulate
    # - multiple strings, space concatenates them, and evaluates it

    # Be sane and always pass a single string to it.

    # http://stackoverflow.com/questions/27927870/is-this-a-bug-in-tcl8-5-8-6-expr-command

    ## Strings passed to operators *must* be quoted

        # Fails:

            # expr {a eq b}

        # OK:

            expr {{a} eq {a}}

    ## eq

        # Direct string comparison.

        # == expands integers first.

            assert [expr {1.0 == 1.00}]
            assert [expr {1.0 ne 1.00}]
            assert [expr {1.0 eq 1.0}]

        # Vs string equal.

            # Same as `string equal`? But for strings, string equal is preferred, golfs better and easier to read.
            # ttps://groups.google.com/forum/#!topic/comp.lang.tcl/IL0c1gN2uT0
            assert [expr {{a} eq {a}}]
            assert [string equal a a]
