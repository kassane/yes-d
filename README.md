# Yes-D: A Memory-Safe,`yes` Command in D

A modern, memory-safe implementation of Unix `yes` command in D. Outputs a string (default: "y") repeatedly to stdout until terminated. Built with D's `@safe` for memory safety and buffered I/O for efficiency.

## Features

- **Memory Safety**: Prevents buffer overflows and undefined behavior via D's `@safe`
- **Buffered I/O**: Uses 64KB buffer for efficient output
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
./bin/yes-d [STRING...]
```
- `STRING`: The string(s) to output. Multiple arguments will be joined with spaces. If not provided, defaults to "y"

### Bench test

```console
[yes app] | dd bs=8k count=819200 of=/dev/null
```

### References

- [uutils/coreutils-rs/yes](https://github.com/uutils/coreutils/tree/main/src/uu/yes)
- [mattn/zig-yes](https://github.com/mattn/zig-yes), based in `uutils/coreutils-rs`
- [mattn/go-yes](https://gist.github.com/mattn/7188a90cfededb915c8e6362e5c358b7), based in `uutils/coreutils-rs`
