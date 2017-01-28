#!/usr/bin/env tclsh

source {shared.tcl}

# String compare, vs integer compare.

assert [ expr {1 == 1.0} ]
assert [ expr {1 == 01} ]
assert [ expr {1 ne 1.0} ]
assert [ expr {1 ne 01} ]
