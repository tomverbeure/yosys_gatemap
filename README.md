# Map a Yosys Design to a Custom Cell Library

You can map a Yosys design to basic cells of a cell library that is described
in a Synopsys Liberty compatible .lib file.

The Yosys `abc` command is used to map combinatorial logic to the standard cells.
`dfflibmap` is used to map flip-flops. Both commands require the 
`-liberty <lib file>` option to specify which library to use.

It's not documented anywhere but to make `abc` happy, you need at least the
following types of cells:

* an inverter
* a buffer
* one of the following: an AND, OR, NAND or NOR gate

If the conditions above are not met, `abc` will abort with this super
helpful error message:

    ABC: ** cmd error: aborting 'source <abc-temp-dir>/abc.script'
    ABC: Error: Current library is not available.
    ERROR: Can't open ABC output file `/tmp/yosys-abc-qms7cw/output.blif'.

If you want to map FFs, you'll also models for those. In this example, I have
only have FF, a simple D FF that doesn't have an asynchronous reset. If your design
has those, you'll need to add support for those in your cell library as well.

The run the example in this repo, install [Yosys](https://github.com/YosysHQ/yosys), then
run the following command:

`yosys -s ./synth.ys`

