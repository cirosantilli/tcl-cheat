#!/usr/bin/env tclsh

source {shared.tcl}

## proc

## Functions

## Return value

    proc f {} {
        return {a}
    }
    assert [expr {[f] eq {a}}]

    proc f {x} {
        return [expr $x + 1]
    }
    assert [expr {[f 1] == 2}]

    proc f {x y} {
        return [expr $x + $y]
    }
    assert [expr {[f 1 2] == 3}]
