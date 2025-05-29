import std.stdio : write;
import std.string : join;

enum bufSize = 64 * 1024; // 64 KB

void main(string[] args) @safe
{
    // Parse arguments
    immutable string output = args.length > 1 ? args[1 .. $].join(" ") : "y";
    immutable string outputWithNewline = output ~ "\n";

    // Build 64 KB buffer
    immutable copySize = outputWithNewline.length;
    immutable copies = bufSize / copySize;
    char[] buffer = new char[copySize * copies];
    foreach (i; 0 .. copies)
        buffer[i * copySize .. (i + 1) * copySize] = outputWithNewline[];

    while (true)
    {
        write(buffer);
    }
}
