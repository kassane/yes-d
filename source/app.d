import std.stdio : writeln, stdout, StdioException;
import std.string : join;
import core.stdc.stdio : _IOLBF;

// Set line buffering for stdout at program start
@trusted void setLineBuffering()
{
    stdout.setvbuf(0, _IOLBF); // Line buffering mode
}

@trusted void safeFlush()
{
    stdout.flush();
}

@safe void main(string[] args)
{
    setLineBuffering(); // Enable line buffering
    bool flushEnabled = args.length > 1 && args[1] == "--flush";
    immutable string output = (flushEnabled ? args.length > 2 : args.length > 1) ? args[flushEnabled ? 2: 1 .. $].join(
        " ") : "y";
    while (true)
    {
        try
        {
            writeln(output);
            if (flushEnabled)
                safeFlush();
        }
        catch (StdioException e)
        {
            break;
        }
    }
}
