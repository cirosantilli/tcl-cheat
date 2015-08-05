# Introduction

Yet another Python equivalent scripting language that I am forced to learn... this time to understand GNU project expect tests. Waste of time!

Mnemonic: Tool Command Language.

Introduced in 1988, 3 years before Python which killed it.

Looks more like bash, and less like C. In particular, its semantics are based on word expansion. This is why Python killed it: bash is insane, C is sane.

If you want to go ultra-golfing for dirty stuff, use bash. There was not enough room for and intermediate like Tcl.

## Get Tcl version

<http://stackoverflow.com/questions/9200108/get-the-version-of-tcl-from-the-command-line>

    echo 'puts $tcl_version;exit 0' | tclsh

`tclsh --version` does not work of course.

## Cons of Tcl

-   There are 4 forms of `true` and `false`: 0, 1, yes, no, true, false, on, or off. Great.

-   No up arrow in tclsh: <http://stackoverflow.com/questions/3041530/how-to-get-command-history-by-cursor-key-in-linux-tclsh-tcl>

-   No multi-line comments: <http://wiki.tcl.tk/8568>
