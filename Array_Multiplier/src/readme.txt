# Array Multiplier – Source Files

This folder contains all the Verilog modules for the Array Multiplier project.  

Here’s what’s inside:  

- partial_product_generator.v – Generates all the partial products needed for multiplication.  
- accumulation_unit.v – Adds up the partial products to get the final result.  
- array_multiplier.v – The top-level module that connects everything together.  
- adder.v – Handles addition inside the accumulation unit.  
- control_unit.v – Manages the control signals for the multiplier.  

All these modules work together to implement the Array Multiplier, and you can simulate them using the testbenches in the tb folder.
