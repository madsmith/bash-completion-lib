    # Remove diff line indicators
/^[0-9]\+[acd]/d
    # Remove diff block separators
/---/d
    # Remove underscore variable
/[<>] _=/d
    # Remove OLDPWD
/[<>] OLDPWD=/d
    # Remove diff addition symbols
s/^> //
    # Remove configuration specific values
s/COMP_LIB=.*/COMP_LIB=PATH/
s/COMP_DIR=.*/COMP_DIR=PATH/
s/UNAME=.*/UNAME=NAME/
