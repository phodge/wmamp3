# How to use

Build the image

    docker build -t wmamp3 .

Convert files

    docker run --rm -ti \
        -v /path/to/your/wma/files:/workdir \
        wmamp3 wmamp3 '/workdir/Some Album/01 Some Song.wma'

The converted file should now be located in `/path/to/your/wma/files`

You might find these aliases helpful:

    wmamp3one() { docker run --rm -v "$PWD:/workdir" wmamp3 wmamp3 "/workdir/$1" && rm -f "$1" }
