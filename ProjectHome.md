Homepage: http://www.fvue.nl/wiki/Bash_completion_library

This project splits the bash completion package of Ian Macdonald (see: http://www.caliban.org/bash/index.shtml#completion) into multiple files.

The objectives of this project are that bash completion:
  * should load faster
  * should consume less memory
  * should have an open development environment
  * should have automated tests

### Should load faster ###

Bash-completion-lib loads 10 times faster as does the single file bash completion package.

### Should consume less memory ###

Completion functions are loaded run-time for only those commands you actually complete - the moment you press TAB.  After the first completion, the completion function is installed and stays in memory for fast subsequent completions.

### Should have an open development environment ###

http://code.google.com/p/bash-completion-lib/

### Should have automated tests ###

[DejaGnu](http://www.gnu.org/software/dejagnu/) is used to run automated tests.

## Roadmap ##

```
                      GOALS                                         REALISATION
     ------------------------------------------   -----------------------------------------------
(1)  Improve bash-completion-20060301:            bash_completion_lib-1.3.1:
 |   - improve initial loading speed              - loads 10x faster
 |   - improve completions                        - contains fixes of 20060301-debian4
 |                                                - contains fixes of 20060301-ubuntu1
 |   - split completions into separate files      - split into 543 files for 609 completions
 |   - add testsuite                              - contains a DejaGnu testsuite with > 1200 tests
 |
 |
(2)  Patch bash, so that real dynamic loading     - bash-4.0 contains a `compopt' builtin
 |   becomes possible:                            - Fedora has patched bash-3 with a catch-all
 |   - add `complete-not-found' handler to bash     programmable completion handler
 |   - add `compset' bash builtin
 |
 |
(3)  Improve bash-completion to do real           --
     dynamic loading
```