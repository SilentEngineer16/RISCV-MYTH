# RISC-V MYTH Workshop – My Learning Journey

This repository documents my work from the RISC-V MYTH (Microprocessor for You in Thirty Hours) workshop conducted by VLSI System Design (VSD) and Redwood EDA.

Through this program, I gained hands-on experience in:

- **RISC-V ISA Fundamentals** – Understanding the RV32I instruction set, software-to-hardware execution stack (Application → API → ABI → RTL → Hardware), and how C programs map to RISC-V instructions.  
- **Application Binary Interface (ABI)** – Learning calling conventions, system calls, and their role in OS–hardware interaction, along with writing C-with-assembly programs using ABI calls.  
- **Instruction Set Architecture (ISA) & Formats** – Detailed study of R, I, and S-type instructions, execution methodology, and how they are handled in hardware.  
- **TL-Verilog** – Learning a modern, timing-abstract HDL that simplifies pipeline implementation and reduces boilerplate code.  
- **CPU Design from Scratch** – Step-by-step creation of a working RISC-V core from basic modules to a fully integrated processor.  
- **Instruction Fetch, Decode, Execute** – Implementing the core stages of the pipeline and ensuring smooth instruction flow.  
- **Register File & ALU Design** – Creating the datapath elements that perform arithmetic, logic, and register operations.  
- **Load/Store Operations** – Designing memory access logic and understanding data alignment in the pipeline.  
- **Branch & Jump Handling** – Managing control hazards, branch prediction concepts, and program counter updates.  
- **Advanced Pipelining Concepts** – Implementing multi-stage pipelines, handling data/control hazards, register bypassing, end-stage validity, and optimizing performance.  
- **Integration & Verification** – Combining all CPU components, running test programs, and debugging using waveform analysis.  
- **Makerchip Simulation** – Visualizing CPU behavior, analyzing timing, and validating instruction execution.


This workshop deepened my understanding of processor architecture, hardware description languages, and computer organization — while giving me practical skills to design, simulate, and analyze a RISC-V CPU using modern tools.

---
Over the five days, I progressed through:

- **Day 1:** Introduction to the RISC-V ISA and the software–hardware execution stack (Application → API → ABI → ISA → RTL → Hardware). Learned how C programs map to RISC-V instructions and executed a simple program on a RISC-V environment.
- **Day 2:** In-depth study of the **Application Binary Interface (ABI)**, system calls, and RISC-V instruction formats (R, I, S types). Gained insight into instruction execution methodology and implemented C-with-assembly programs using ABI calls on a Verilog PicoRV32 core with testbench verification.
- **Day 3:** Learned **TL-Verilog** syntax, Makerchip environment, pipelining principles, retiming, validity, clock gating, and hierarchy concepts. Built a functional calculator with memory recall using TL-Verilog.
- **Day 4:** Explored the **RISC-V microarchitecture** for a single-cycle CPU in TL-Verilog, implementing PC, instruction fetch, decode, control logic, ALU, instruction memory, register file, and a simple testbench.
- **Day 5:** Designed a **5-stage pipelined RISC-V CPU** (Fetch, Decode, Read, Execute, Write), implementing invalid signal handling, hazard resolution (register bypassing, control hazards), end-stage validity, branching, jumping, and pipelined load/store from memory. Used waterfall diagrams for design clarity and achieved a fully functional pipelined core.

---
## Acknowledgement

I would like to express my heartfelt thanks to [**Kunal Ghosh**](https://www.linkedin.com/in/kunal-ghosh-vlsisystemdesign-com-28084836/) (VLSI System Design) and [**Steve Hoover**](https://www.linkedin.com/in/steve-hoover-a44b607/) (Redwood EDA) for designing and delivering this wonderful course.  
Their guidance, enthusiasm, and structured teaching approach made this complex journey into CPU design not just understandable, but truly enjoyable.
