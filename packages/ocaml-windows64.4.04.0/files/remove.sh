#!/bin/sh -e

PREFIX="$1"

for bin in ocaml ocamlc ocamlcp ocamldebug ocamldep ocamldoc ocamllex ocamlmklib ocamlmktop ocamlobjinfo ocamlopt ocamloptp ocamlprof ocamlrun ocamlyacc; do
  rm -f "${PREFIX}/windows-sysroot/bin/${bin}"
done

for pkg in bigarray bytes compiler-libs dynlink graphics num num-top stdlib str threads unix; do
  rm -rf "${PREFIX}/windows-sysroot/lib/${pkg}"
done

rm -rf "${PREFIX}/windows-sysroot/lib/ocaml"
rm -rf "${PREFIX}/windows-sysroot/lib/findlib.conf.d"
