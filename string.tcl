#!/usr/bin/env tclsh

source {shared.tcl}

# Everything is a string, much like bash.
assert [ expr {1 eq "1"} ]
assert [ expr {1 eq {1}} ]

# TODO why are unquoted strings not allowed at:
#assert [ expr {a eq a} ]
# but are allowed at:
#set a b
# http://www.tcl.tk/cgi-bin/tct/tip/292.html
# Anyways, always quote strings.

# Unlike bash however, $ and [] expansion are automatically quoted, which is way saner.
set x "a b"
assert [ expr {$x eq "a b"} ]

set a {b}
# "" substitutes.
assert [ expr {"$a" eq {b}} ]
assert [ expr {"[expr {1 + 1}]" eq {2}} ]
# {} does not.
assert [ expr {{$a} eq "\$a"} ]
assert [ expr {{[expr {1 + 1}]} eq "\[expr {1 + 1}]"} ]
