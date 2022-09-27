# Verilog Export

- The dependencies are processed in a bottom up way
- When the current schematic is needed as a custom component, a port mapping for it is generated to be used later on
- First all custom components that have bidirectional pins get inlined 
- A pin-to-component and a connected-pin grouping (Wire Groups) is created
- All components get translated into verilog module instances
  - The parameters for some components like Mux8 vs Mux16 or the FileName for the Program component get filled in.
- All Wire Groups get turned into verilog signals. 
  - if a Wire group has multiple sources, they get ORed together. This allows implementation of tristate via a simple switch that outputs 0 when it's disabled
- The ports of the components get assigned to signals
- The final result gets translated into strings that is then put into a `.v` module file.
- This is repeated till all dependencies are processed
- Afterwards, the prebuilt code for all standard components gets emitted.
- Then the test benches and build scripts get generated.