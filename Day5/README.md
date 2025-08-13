## Day 5: Designing a 5-Stage Pipelined RISC-V CPU in TL-Verilog

On **Day 5**, I advanced from single-cycle CPU design to crafting a **fully pipelined, five-stage RISC-V processor** using TL-Verilog. This was the point where the design began to resemble a modern CPU capable of executing multiple instructions in parallel.

### What I Learned

- **5-Stage Pipeline Design**  
  Structured the CPU into these five stages:  
  1. **Fetch** – Retrieve the next instruction from instruction memory.  
  2. **Decode** – Interpret the instruction to determine control signals.  
  3. **Read** – Access the register file to fetch operands.  
  4. **Execute** – Perform ALU operations, branch calculations, and memory address generation.  
  5. **Write** – Write results back to the register file.

- **Waterfall Diagram for Pipeline Visualization**  
  Used a waterfall diagram to map instruction flow across stages over time. This helped in debugging and verifying that instructions were being fetched, decoded, executed, and written back in the correct sequence while overlapping in the pipeline.

- **Validity (`valid`) Signals for Flow Control**  
  Propagated `valid` signals through each stage so only active instructions move forward. This allowed clean handling of **flushes** (removing invalid instructions) and **stalls** (pausing the pipeline without losing data).

- **End-Stage Validity**  
  Incorporated checks at the **Write** stage to ensure only valid results are written to the register file, preventing incorrect updates when hazards or flushes occur.

- **Resolving Data Hazards (Read After Write / RAW)**  
  Implemented **register bypassing (forwarding)** to route results from later pipeline stages (Execute or Write) directly to earlier stages (Read or Execute) when an instruction depends on the result of a still-in-flight instruction—avoiding unnecessary stalls.

- **Mitigating Control Hazards (Branches and Jumps)**  
  Added branch and jump handling with pipeline flushing when control flow changes, preventing execution of wrong-path instructions.

- **Extending ALU Capabilities**  
  Enhanced the ALU to cover the complete RV32I instruction set, supporting arithmetic, logical, and comparison operations.

- **Pipelined Branch, Jump, Load, and Store**  
  - **Branch & Jump**: Target calculation in the **Execute** stage with flush logic to handle mispredictions.  
  - **Load & Store**: Memory address generated in the **Execute** stage, with data fetched or written in the **memory access** portion of the pipeline before completing in the **Write** stage.  

- **Systematic Integration**  
  Coordinated hazard detection, control logic, forwarding paths, and pipeline validity to ensure smooth, high-performance CPU operation.

---

### Makerchip Example

| Description                          | Link                                                                     |
|--------------------------------------|--------------------------------------------------------------------------|
| 5-Stage Pipelined RISC-V CPU Design | [View on Makerchip](https://myth.makerchip.com/sandbox/0DkfBhVq/0qjhOjR#) |

---
**5-Stage Pipelined RISC-V CPU Design**


<img width="432" height="669" alt="image" src="https://github.com/user-attachments/assets/a086565f-489f-458f-a17f-03770e294b5b" />


### Day 5 Reflection

This was the day the design truly became a *real CPU*. By breaking execution into five well-defined stages, I was able to run multiple instructions in-flight, visualize execution with a waterfall diagram, manage hazards with bypassing and validity checks, and integrate the full RV32I instruction set — including branching and memory access — into a high-performance pipeline.
