# MIPS-pipelined-24 bit processor 
Pipeline Stages:
A pipelined processor divides instruction execution into stages, allowing multiple instructions to overlap. Here are the five common stages:
Instruction Fetch (IF):
In this stage, the processor fetches the next instruction from memory. The program counter (PC) points to the address of the instruction to be fetched.
The instruction memory (IMEM) provides the instruction to the next stage.
Instruction Decode (ID):
In the ID stage, the fetched instruction is decoded. Key tasks include:
Extracting the opcode (operation code) and identifying the instruction type (e.g., R-type, I-type, J-type).
Reading register values (source registers) based on the instruction.
Determining the target register (destination register) for write-back.
Execute (EX):
The EX stage performs ALU operations or address calculations. Depending on the instruction type:
For R-type instructions (e.g., ADD, SUB), ALU computes the result.
For I-type instructions (e.g., ADDI, LW), ALU performs arithmetic or logical operations.
For branch instructions (e.g., BEQ, BNE), ALU compares values to decide whether to take the branch.
Memory Access (MEM):
In this stage, memory-related operations occur:
For load instructions (e.g., LW), data is read from memory.
For store instructions (e.g., SW), data is written to memory.
Branch instructions determine whether to take the branch based on the result of the ALU operation.
Write Back (WB):
The final stage writes results back to registers:
For R-type instructions, the ALU result is stored in the target register.
For load instructions, the loaded data is written to the target register.

Hazard Prevention Techniques:
Pipelining introduces hazards (e.g., data hazards, control hazards). These techniques mitigate them:
Hazard Detection Unit: Identifies hazards (e.g., data dependencies) and inserts stalls (no-ops) when necessary.
Data Forwarding: Resolves hazards by forwarding data directly from one stage to another.
