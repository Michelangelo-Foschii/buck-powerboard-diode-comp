# Programmable 28V to 3.3V Buck Power Board for Avionics Applications

This project implements a 28V to 3.3V buck regulator board using the TPS54340 and the Diode PCB DSL toolchain. The design was motivated by rocketry avionics style power distribution, where higher voltage rails often need to be stepped down for embedded electronics and control hardware. The repository includes the board definition, custom footprints, and an ngspice based simulation flow used to validate startup and switching behavior.

## Schematic View
![Schematic](docs/schematic.png)

## Layout View
![Layout](docs/layout.png)

The current layout captures the board structure and component integration, though routing and final placement optimization were not the focus of this stage.

## Simulation
A simplified ngspice transient simulation was used to verify the expected switching behavior of the buck converter. The simulation captures startup behavior, output settling, and the switching waveform at the regulator node.

### Input and Output Voltage
![VIN and VOUT](simulation/results/vin_vout.png)


## Project Motivation

This board was inspired by power conversion needs commonly seen in rocketry avionics systems, where a higher voltage supply must be converted into a regulated low voltage rail for onboard electronics. The design focuses on implementing a compact 28V to 3.3V switching supply and validating its behavior through simulation before further PCB refinement.

