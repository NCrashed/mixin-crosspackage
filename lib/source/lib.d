module lib;

template Injector(T...) {
	import std.traits;

	string generate() {
		string acc = "";
		static foreach(U; T) {
			acc ~= fullyQualifiedName!U ~ " " ~ U.name ~ ";\n";
		}
		return acc;
	}
}

template Storage(T...) {
	mixin (Injector!T.generate());
}
