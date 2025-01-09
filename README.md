# Audio Jingle on FPGA

This project involves generating an audio jingle with a programmable logic system using an FPGA. The focus is on signal processing, volume modulation, and audio effects.

## Features

- **Jingle Generation**: Create a short melody using sine wave samples stored in ROM.
- **Volume Modulation**: Adjust audio amplitude and display the volume level on an OLED screen as a bar graph.
- **Echo Effect**: Apply an echo effect to an audio input, demonstrating real-time signal processing.
- **Audio Codec Integration**: Utilize the ADAU1761 audio codec for digital-to-analog and analog-to-digital conversions.

## System Design

- **FPGA Board**: Nexys Video with ADAU1761 codec.
- **Programming Language**: VHDL.
- **Modules**:
  - `generateur_sample`: Generates sine wave samples for the jingle.
  - `modulateur_volume`: Modulates audio amplitude based on user input.
  - `controleur_OLED`: Displays volume level on the OLED screen.
  - `module_echo`: Implements an echo effect on an arbitrary audio input.
 
![Pipeline](https://github.com/user-attachments/assets/6b512927-b0ff-4f35-b9b9-2887f47e985b "Pipeline")
