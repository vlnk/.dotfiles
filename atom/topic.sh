install () {
  #!/bin/bash
  wget -q https://github.com/atom/atom/releases/latest -O /tmp/latest
  wget -q $(awk -F '[<>]' '/href=".*atom-amd64.deb/ {match($0,"href=\"(.*.deb)\"",a); print "https://github.com/" a[1]} ' /tmp/latest) -O /tmp/atom-amd64.deb
  sudo dpkg -i /tmp/atom-amd64.deb
}

upgrade () {
  #!/bin/bash
  wget -q https://github.com/atom/atom/releases/latest -O /tmp/latest
  wget -q $(awk -F '[<>]' '/href=".*atom-amd64.deb/ {match($0,"href=\"(.*.deb)\"",a); print "https://github.com/" a[1]} ' /tmp/latest) -O /tmp/atom-amd64.deb
  dpkg -i /tmp/atom-amd64.deb
}


update () {
    #!/bin/bash
  wget -q https://github.com/atom/atom/releases/latest -O /tmp/latest
  wget -q $(awk -F '[<>]' '/href=".*atom-amd64.deb/ {match($0,"href=\"(.*.deb)\"",a); print "https://github.com/" a[1]} ' /tmp/latest) -O /tmp/atom-amd64.deb
  dpkg -i /tmp/atom-amd64.deb
}

"$@"
