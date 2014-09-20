public class FakeInputStream : GLib.InputStream {
	public override ssize_t read (uint8[] buffer, Cancellable? cancellable = null) throws IOError {
		stdout.printf ("Read on FakeInputStream succeeded\n");
		return 0;
	}

	public override bool close (Cancellable? cancellable = null) {
		return true;
	}
}
