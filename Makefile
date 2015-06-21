DIRS=util

main.native:
	ocamlbuild -Is $(DIRS) main.native
main.byte:
	ocamlbuild -Is $(DIRS) main.byte

all:
	main.native

clean:
	ocamlbuild -clean
