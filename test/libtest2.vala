public class FakeOutputStream : GLib.OutputStream {
	public override ssize_t write (uint8[] buffer, Cancellable? cancellable = null) throws IOError {
		stdout.printf ("Write on FakeOutputStream succeeded\n");
		return 0;
	}

	public override bool close (Cancellable? cancellable = null) {
		return true;
	}
}
