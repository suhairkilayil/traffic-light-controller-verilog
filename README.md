# 🚦 Traffic Light Controller Using Verilog HDL

## 📌 Overview

This project implements a **Traffic Light Controller using Verilog HDL** based on a Finite State Machine (FSM). The design controls multiple traffic signal outputs through predefined states and clock-driven transitions.

The project was developed and simulated using **Xilinx Vivado 2025.1**, providing practical experience in RTL design, sequential logic, FSM implementation, and FPGA design workflows.

## 🎯 Objectives

- Design a traffic light controller using Verilog HDL.
- Implement a six-state Finite State Machine.
- Understand clock-driven state transitions and asynchronous reset.
- Verify the design using a Verilog testbench.
- Analyze signal behavior through simulation waveforms.
- Generate an FPGA bitstream using Vivado.

## ⚙️ Working Principle

The controller uses six predefined states, `S1` to `S6`, to manage the traffic signal outputs.

The FSM transitions between states based on the clock and reset signals. The output signals are assigned according to the current state, determining the traffic signal configuration.

### Main Output Signals

- `light_M1`
- `light_M2`
- `light_MT`
- `light_S`

An asynchronous reset initializes the FSM to its initial state. During normal operation, the controller progresses through its predefined state sequence on clock edges.

## 🧩 Block Diagram

The overall design consists of a clock input, reset input, FSM control logic, and traffic light outputs.

Add your block diagram image to the `docs/` folder using the filename `block_diagram.png`.

![Traffic Light Controller Block Diagram](docs/block_diagram.png)

## 💻 Tools and Technologies

- **Hardware Description Language:** Verilog HDL
- **Design Methodology:** RTL Design
- **Control Architecture:** Finite State Machine (FSM)
- **Simulation and Implementation:** Xilinx Vivado 2025.1
- **Verification:** Testbench and waveform analysis
- **Output Artifact:** FPGA bitstream (`.bit`)

## 📂 Project Structure

```text
traffic-light-controller/
│
├── README.md
├── src/
│   └── Traffic_Light_Controller.v
├── testbench/
│   └── Traffic_Light_Controller_tb.v
├── docs/
│   ├── block_diagram.png
│   └── simulation_waveform.png
├── bitstream/
│   └── Traffic_Light_Controller.bit
└── constraints/
    └── traffic_light_controller.xdc
```

## 🧪 Simulation and Verification

A Verilog testbench is used to provide clock and reset signals and observe the controller's output behavior during simulation.

The simulation waveform can be added to the repository to demonstrate the state transitions and corresponding traffic light outputs.

![Traffic Light Controller Simulation Waveform](docs/simulation_waveform.png)

## 🔧 FPGA Implementation

The design was synthesized and implemented using Xilinx Vivado 2025.1, and a bitstream was generated.

**Note:** The generated bitstream was produced with the `NSTD-1` and `UCIO-1` design rule checks downgraded to warnings. Since complete FPGA pin assignments and I/O standards were not configured, the bitstream is **not verified as ready for programming a physical FPGA board**.

## 📚 Key Learning Outcomes

- Understanding FSM-based digital system design.
- Implementing sequential logic using Verilog HDL.
- Working with clock and asynchronous reset signals.
- Writing testbenches and analyzing simulation waveforms.
- Exploring synthesis, implementation, and bitstream generation in Vivado.

## 🚀 Future Enhancements

- Add timer-based transitions for realistic traffic signal timing.
- Incorporate pedestrian crossing control.
- Add vehicle detection using sensors.
- Verify the design on an FPGA development board with appropriate pin constraints.

## 👨‍💻 Author

**Suhair K**

Electronics and Communication Engineering

## 📄 License

This project is intended for educational and learning purposes.

