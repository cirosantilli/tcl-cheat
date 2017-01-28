#!/usr/bin/env tclsh

source {shared.tcl}

# Just a string, like everything else.

set l {1 2 3}
assert [expr {[lindex $l 0] eq 1}]
assert [expr {[lindex $l 1] eq 2}]

# Items with spaces.

set l {{a b} {c d}}
assert [ expr {[lindex $l 0] eq {a b}} ]

# Iterate.
set sum 0
foreach x {1 2 3} {
    set sum [expr {$sum + $x}]
}
assert [expr {$sum eq 6}]
