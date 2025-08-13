## Day 2: Deep Dive into ABI and RISC-V Instruction Types

**Day 2** was centered on understanding the **Application Binary Interface (ABI)** in detail, learning the RISC-V instruction formats, and applying that knowledge in both C and assembly-level programming.

### Key Learning Topics

- **Application Binary Interface (ABI)**
  - Understood the role of ABI in bridging **application software** and **operating systems**.
  - Learned how ABI defines:
    - Function calling conventions (register usage, parameter passing, return values).
    - Stack management and memory layout.
    - System call mechanisms for OS interaction.
  - Explored how ABI is applied specifically in the RISC-V architecture.

- **RISC-V Instruction Types**
  - Detailed breakdown of major instruction formats:
    - **R-Type** – Register-register operations (arithmetic, logic).
    - **I-Type** – Immediate values, load instructions.
    - **S-Type** – Store instructions.
  - Understood the encoding fields: opcode, funct3, funct7, rs1, rs2, rd, and immediate.

- **Instruction Set Architecture (ISA) Execution Methodology**
  - Step-by-step view of how instructions are fetched, decoded, and executed.
  - Mapping between C code, ABI-level representation, and the final machine instructions.

- **Hands-on Programming**
  - Learned a new way of writing **C programs with embedded assembly** using ABI calls.
  - Executed these programs on a **Verilog-based PicoRV32 core**.
  - Created and ran a **testbench in Icarus Verilog (iverilog)** to verify correct execution at the hardware simulation level.

### Key Takeaway
By the end of Day 2, I could directly relate **high-level C code**, **assembly instructions**, and **hardware execution** — giving me the tools to write software that tightly integrates with the RISC-V hardware design process.
