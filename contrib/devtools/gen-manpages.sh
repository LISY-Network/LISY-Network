#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

LISYNETWORKD=${LISYNETWORKD:-$SRCDIR/lisynetworkd}
LISYNETWORKCLI=${LISYNETWORKCLI:-$SRCDIR/lisynetwork-cli}
LISYNETWORKTX=${LISYNETWORKTX:-$SRCDIR/lisynetwork-tx}
LISYNETWORKQT=${LISYNETWORKQT:-$SRCDIR/qt/lisynetwork-qt}

[ ! -x $LISYNETWORKD ] && echo "$LISYNETWORKD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
LISYVER=($($LISYNETWORKCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for lisynetworkd if --version-string is not set,
# but has different outcomes for lisynetwork-qt and lisynetwork-cli.
echo "[COPYRIGHT]" > footer.h2m
$LISYNETWORKD --version | sed -n '1!p' >> footer.h2m

for cmd in $LISYNETWORKD $LISYNETWORKCLI $LISYNETWORKTX $LISYNETWORKQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${LISYVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${LISYVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
