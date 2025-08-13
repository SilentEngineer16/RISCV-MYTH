## Day 1: Introduction to RISC-V and First Hands-on Program

**Day 1** focused on building a foundational understanding of the **RISC-V architecture**, its instruction set, and how software interacts with hardware in a RISC-V system.

### Key Learning Topics

- **Basics of RISC-V**  
  - Understanding the open-source nature of the RISC-V ISA.  
  - Exploring why RISC-V is modular, extensible, and free from licensing restrictions.

- **RISC-V ISA (Instruction Set Architecture)**  
  - Introduction to the **RV32I** base instruction set.  
  - Understanding how instructions are encoded and executed.  
  - Mapping high-level code to assembly instructions.

- **The RISC-V Software-to-Hardware Stack**  
  Learned how an application written in a high-level language is translated into hardware-level operations through multiple abstraction layers:
  1. **Application Layer** – C program or other high-level code.  
  2. **API (Application Programming Interface)** – Functions and libraries that the program calls.  
  3. **ABI (Application Binary Interface)** – Defines how functions are called, how parameters are passed, and how system calls are handled.  
  4. **Assembly / Machine Code** – Instructions the CPU understands.  
  5. **RTL (Register Transfer Level)** – Hardware logic design representation that implements the ISA.

- **First Hands-on RISC-V Program**  
  - Wrote a simple **C program** targeting the RISC-V architecture.  
  - Compiled it using a RISC-V GCC toolchain.  
  - Ran the program on a RISC-V simulation environment to observe how the code executes at the instruction level.

### Key Takeaway
This day set the stage for the rest of the workshop by bridging the gap between **high-level software** and **low-level hardware implementation**, giving me a clear picture of how instructions flow from C code to actual CPU execution.
