DIRS=util,x86
LIBS=nums

main.native:
	ocamlbuild -Is $(DIRS) -lib $(LIBS) main.native
main.byte:
	ocamlbuild -Is $(DIRS) -lib $(LIBS) main.byte
x86:
	./main.native >> test.s
	gcc -o test runtime.c test.s

all:
	main.native

clean:
	ocamlbuild -clean
