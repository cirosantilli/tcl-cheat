#!/usr/bin/env tclsh

## Dollar sign

## $

source {shared.tcl}

set a 1
assert [string equal $a 1]
assert [string equal ${a} 1]
assert [string equal ${a}b 1b]
assert [string equal ${a}b 1b]

# Unlike in Bash, expanded variables are not word split:

set a {b c}
assert [string equal $a {b c}]
set a {b }
assert [string equal ${a}c {b c}]
