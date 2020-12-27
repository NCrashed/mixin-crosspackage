import std.stdio;
import lib;

struct A {
	enum name = "a";
}

struct B {
	enum name = "b";
}

alias S = Storage!(A, B);

void main()
{
	writeln("Edit source/app.d to start your project.");
}
