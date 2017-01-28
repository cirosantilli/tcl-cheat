#!/usr/bin/env tclsh

source {shared.tcl}

if {1} {
} else {
    assert 0
}

if {-1} {
} else {
    assert 0
}

if {0} {
    assert 0
}

if {true} {
} else {
    assert 0
}

if {false} {
    assert 0
}

if {yes} {
} else {
    assert 0
}

if {no} {
    assert 0
}

# Invalid.
#if {foo} {}
