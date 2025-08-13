## Day 4: RISC-V ISA & Single-Cycle Microarchitecture in TL-Verilog

Day 4 marked the transition from generic pipelining concepts to actually building parts of a CPU.  
We began exploring the **RISC-V Instruction Set Architecture (ISA)** and mapped its behavior into a **single-cycle microarchitecture** using TL-Verilog.

### Key Learnings

- **Introduction to RISC-V ISA**  
  Understood the basic instruction formats, opcodes, and how the RISC-V design philosophy emphasizes simplicity and modularity.

- **RISC-V Microarchitecture (Single-Cycle)**  
  Designed a single-cycle datapath implementing the fundamental instruction flow.

- **Core Components Implemented**  
  - **Program Counter (PC)** – to track the current instruction address.  
  - **Instruction Fetch** – retrieving instructions from instruction memory.  
  - **Instruction Decoder** – parsing opcode, function codes, register indices, and immediates.  
  - **Control Logic** – generating control signals for ALU operations, memory access, and register writes.  
  - **Register File** – supporting two read ports and one write port for register operands.  
  - **ALU** – performing arithmetic and logical operations.  
  - **Data Path Wiring** – connecting all blocks for single-cycle execution.

- **Instruction & Register Memory Access**  
  Read instructions from an instruction memory module, and implemented register read/write logic in TL-Verilog.

- **Verification via Testbench**  
  Wrote a simple testbench in TL-Verilog to feed instructions, observe outputs, and verify correct functionality of the CPU datapath.

---

### Makerchip Example

| Description                                 | Link                                                                      |
|---------------------------------------------|---------------------------------------------------------------------------|
| RISC-V Single-Cycle Pipeline Implementation | [View on Makerchip](https://myth.makerchip.com/sandbox/0PNf4hNo/0Wnhjom#) |

---
**RISC-V Single-Cycle Pipeline Microarchitecture**

<img width="779" height="560" alt="image" src="https://github.com/user-attachments/assets/a9cf1b21-aff4-4753-921c-c7a7f4ebba57" />


### Reflection
Day 4 connected the dots between architecture theory and actual hardware design.  
I learned how **ISA concepts translate directly into datapath and control signals**—and how TL-Verilog makes this process faster and less error-prone by abstracting away timing details while still letting you build real hardware.

This was the first tangible step toward a fully functional RISC-V core.
