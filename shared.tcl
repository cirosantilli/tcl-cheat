#!/usr/bin/env tclsh

proc assert {x} {
    if {!$x} {
        puts {ASSERT FAILED}
        exit 1
    }
}
