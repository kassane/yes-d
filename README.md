# Yes-D: A Memory-Safe,`yes` Command in D

A modern, memory-safe implementation of Unix `yes` command in D. Outputs a string (default: "y") repeatedly to stdout until terminated. Built with D's `@safe` for memory safety and line-buffered I/O for efficiency.

## Features

- **Memory Safety**: Prevents buffer overflows and undefined behavior via D's SafeD
- **Line Buffering**: Uses optimized line buffering for efficient output
- **Exception Handling**: Gracefully handles I/O errors like broken pipes
- **Simple Interface**: Matches standard Unix `yes` command behavior
- **Cross-Platform**: Works on any D compiler-supported platform


## Installation

### Prerequisites

- A [D compiler](https://dlang.org/download.html).
- A working D development environment (e.g., `dub`, `redub` or manual compilation).

### Build from Source

1. Clone the repository:
   ```bash
   git clone https://github.com/kassane/yes-d
   cd yes-d
   dub build -b release
   ```
2. The compiled binary will be located in the `bin/` directory.

## Usage

```console
./bin/yes-d [--flush] [STRING]
```
- `--flush`: Optional flag to enable line flushing
- `STRING`: The string to output. If not provided, defaults to "y".