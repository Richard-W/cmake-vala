int main () {
	FakeInputStream istream = new FakeInputStream ();
	FakeOutputStream ostream = new FakeOutputStream ();

	try {
		istream.read (new uint8[1]);
		ostream.write (new uint8[1]);
	} catch (Error e) {
		stderr.printf (e.message);
		return 1;
	}

	return 0;
}
