#!/usr/bin/env tclsh

## proc

## Functions

source {shared.tcl}

## Return value

    proc f {} {
        return {a}
    }
    assert [ expr {[f] eq {a}} ]

    proc f {x} {
        return [ expr $x + 1 ]
    }
    assert [ expr {[f 1] == 2} ]
