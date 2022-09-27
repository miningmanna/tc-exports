# Turing Complete export formats

This repo contains the various files needed for the export implementations in the game [Turing Complete](https://turingcomplete.game).

It does not contain the actual implementations of the export formats, those are build into the game itself.

## Templates
Some files are templates. A very simple templating engine is implemented: The brackets are customizable, by default it's `{name}`, but for C++ it's `{[name]}`.

There are three patterns currently implemented:
- `{name}`, which is just replaced by the provided value
- `{?name} ... {/name}`, which is "conditional inclusion", so the content is only copied over when the provided value for `name` is `true`.
- `{?!name} ... {/name}` indicates the opposite of the above option, so it's only included if the provided value is `false`

## Formats

### verilog

Produces verilog files from schematics. Uses the various prebuild files in /verilog_files.

A bit of documentation for the export process is in [verilog_export.md](verilog_export.md)

### VHDL

Under construction

Will use the files under /vhdl_files

### C

Potentially planned, no promises at the moment :-)