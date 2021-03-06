#!/bin/bash

echo "Configuring PULP SDK at: $PULP_SDK_HOME"

add_path() {
    export PATH=${PATH//":$1:"/:}
    export PATH=${PATH/%":$1"/}
    export PATH=${PATH/#"$1:"/}
    export PATH="$1${PATH:+":$PATH"}"
}

add_ld_path() {
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH//":$1:"/:}
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/%":$1"/}
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/#"$1:"/}
    export LD_LIBRARY_PATH="$1${LD_LIBRARY_PATH:+":$LD_LIBRARY_PATH"}"
}

add_PYTHONPATH() {
    export PYTHONPATH=${PYTHONPATH//":$1:"/:}
    export PYTHONPATH=${PYTHONPATH/%":$1"/}
    export PYTHONPATH=${PYTHONPATH/#"$1:"/}
    export PYTHONPATH="$1${PYTHONPATH:+":$PYTHONPATH"}"
}

add_path $PULP_SDK_HOME/install/ws/bin
add_ld_path $PULP_SDK_HOME/install/ws/lib
add_PYTHONPATH $PULP_SDK_HOME/install/ws/python

export PULP_SDK_INSTALL=$PULP_SDK_HOME/install
export PULP_SDK_WS_INSTALL=$PULP_SDK_HOME/install/ws
export SDK_TILER_PATH=$PULP_SDK_HOME/install/auto-tiler