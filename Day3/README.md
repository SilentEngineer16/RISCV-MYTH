## Day 3: TL-Verilog & Pipelining Concepts

On Day 3 of the **RISC-V MYTH** workshop, I moved from learning the basics of TL-Verilog to implementing a fully functional pipelined calculator with memory recall.

### Key Learnings

- **TL-Verilog Syntax & Makerchip Environment**  
  Explored the timing-abstract syntax of TL-Verilog and worked hands-on in the Makerchip browser-based IDE.

- **Constraints & Timing-Abstract Modeling**  
  Understood how TL-Verilog handles constraints and how timing-abstract modeling simplifies retiming and stage balancing.

- **Pipelining Principles**  
  Broke logic into multiple stages to improve performance, while learning about stage isolation and high-frequency operation.

- **Retiming for Performance**  
  Practiced redistributing registers across pipeline stages to optimize critical paths.

- **Validity Signaling & Flow Control**  
  Implemented `valid` signals to ensure only meaningful data propagates through the pipeline.

- **Clock Gating for Power Efficiency**  
  Learned how to save power by enabling/disabling clock regions dynamically.

- **Hierarchical Design & Modularity**  
  Structured the design into reusable modules, improving clarity and maintainability.

- **Calculator with Memory Recall**  
  Applied all learned concepts to create a calculator circuit capable of arithmetic operations and memory recall.

---
**Final Calculator architecture**



<img width="629" height="672" alt="image" src="https://github.com/user-attachments/assets/064c89f7-effd-4f4b-abc3-d293a4222e0a" />

### Makerchip Links

| Description                              | Link 
|------------------------------------------|------------------------------------------------------------------------------
| Calculator with Delay Logic              | [View on Makerchip](https://makerchip.com/sandbox/01wfphQm/0lOhow8)
| Reset Demonstration                      | [View on Makerchip](https://makerchip.com/sandbox/01wfphQm/0mwh5ox)
| Pipeline Example                         | [View on Makerchip](https://makerchip.com/sandbox/01wfphQm/0oYhXV0)
| Single-Stage Pipeline                    | [View on Makerchip](https://makerchip.com/sandbox/01wfphQm/0wjhLEw)
| Adding Valid Signal                      | [View on Makerchip](https://makerchip.com/sandbox/068fohVV/0DRhB7O)
| Memory + Recall Logic (Final Calculator) | [View on Makerchip](https://makerchip.com/sandbox/068fohVV/0KOhqQ9)

---

### Reflection

Day 3 was a deep dive into **practical RTL design**—from basic syntax and environment setup to advanced pipelining, retiming, and low-power techniques. By the end of the day, I had a working calculator that showcased all these principles in action.

