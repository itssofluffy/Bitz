#!/bin/bash
#
#  install-gyb
#
#  Copyright (c) 2016 Stephen Whittle  All rights reserved.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom
#  the Software is furnished to do so, subject to the following conditions:
#  The above copyright notice and this permission notice shall be included
#  in all copies or substantial portions of the Software.
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
#  IN THE SOFTWARE.

##################################################
swift_install_dir() {
##################################################
    local dir=""

    for dir in $(printf "$PATH" | tr ':' ' ')
    do
        if [ -x "$dir/swift" ] ; then
            dir="$dir"
            break
        fi
    done

    printf "$dir"
}

##################################################
# main() {
##################################################

if [ $(id -u) -ne 0 ] ; then
    printf "you must be a superuser!!!\n" >&2
    exit 1
fi

url="https://github.com/apple/swift/raw/master/utils"
install_dir="$(swift_install_dir)"

if [ -z "$install_dir" -o ! -d "$install_dir" ] ; then
    printf "unable to determine swift installation directory!!!\n" >&2
    exit 2
fi

for fname in "gyb" "gyb.py"
do
    if [ ! -f "$install_dir/$fname" ] ; then
        wget "$url/$fname"
        mv "$fname" "$install_dir"
    fi
done

chmod 755 "$install_dir/gyb"

cat << @@ >"$install_dir/gyb-source"
#!/bin/bash

gyb_extension=".gyb"

for gyb_file in \$(find "." -name "*\$gyb_extension" | sort)
do
    src_file="\$(printf "%s/%s" "\$(dirname "\$gyb_file")" "\$(basename "\$gyb_file" "\$gyb_extension")")"

    if [ "\$gyb_file" -nt "\$src_file" ] ; then
        printf "%s -> %s\n" "\$gyb_file" "\$src_file" >&1

        gyb --line-directive '' -o "\$src_file" "\$gyb_file"
    fi
done

exit 0
@@

chmod 755 "$install_dir/gyb-source"

##################################################
exit 0
# }
##################################################
