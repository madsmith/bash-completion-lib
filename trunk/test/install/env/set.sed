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
s/COMP_CACHE=.*/COMP_CACHE=PATH/
s/COMP_DIR=.*/COMP_DIR=PATH/
s/COMP_PATH=.*/COMP_PATH=PATH/
s/UNAME=.*/UNAME=NAME/
s/bash205=.*/bash205=VERSION/
s/bash205b=.*/bash205b=VERSION/
s/bash3=.*/bash3=VERSION/
