# Convolutional Codes for Satellite Communication

**Instructor:** Prof. Yash Vasavada (Dean Research) 
**Institution:** Dhirubhai Ambani University (DAU)  

---

## Project Overview  

This project focuses on the simulation and performance analysis of **convolutional codes** as an error correction technique in satellite communication systems. Given the high latency, noise, and retransmission constraints in satellite links, convolutional codes are used to ensure data integrity through forward error correction.

In addition to channel coding, **Lloyd-Max quantization** was applied during the source encoding stage to optimize signal representation before transmission.

---

## Key Features  

- Designed for **satellite communication** scenarios where bandwidth is limited and channel conditions are noisy.  
- Implemented **convolutional encoding** with customizable generator polynomials and constraint lengths.  
- Applied **Lloyd-Max quantization** to compress and optimize signal representation before encoding.  
- Implemented **Viterbi decoding** for maximum-likelihood sequence detection.  
- Simulated and analyzed **Bit Error Rate (BER)** performance under additive white Gaussian noise (AWGN).  
- Visualized trellis structures, decoded paths, and BER performance curves.  

---

## Project Structure  

| File                              | Description                                       |
|-----------------------------------|---------------------------------------------------|
| `encoder.py / encoder.ipynb`      | Convolutional encoder implementation              |
| `decoder.py / decoder.ipynb`      | Viterbi decoding algorithm                        |
| `lloyd_max_quantization.py`       | Lloyd-Max quantizer for source encoding           |
| `simulation.py / simulation.ipynb`| End-to-end BER simulation with AWGN               |
| `plots/`                          | BER graphs, trellis visuals, decoder tracebacks   |
| `README.md`                       | Project documentation                             |

---

## Functional Objectives  

- Encode raw data using convolutional codes for forward error correction.  
- Quantize input using **Lloyd-Max algorithm** for efficient source representation.  
- Decode received sequences using Viterbi algorithm.  
- Evaluate the system's performance through **BER curves** across varying SNRs.  
- Provide a flexible simulation environment for satellite-based digital transmission.

---

## Technologies Used  

- Programming Language: MATLAB
- Signal Processing & Communication Theory  
- Lloyd-Max Quantization Algorithm  
- Viterbi Decoding Algorithm  
- BER and Trellis Visualization with Matplotlib  

---

This project demonstrates the critical role of source and channel coding techniques in improving the reliability of satellite communication systems, particularly in noisy environments where retransmission is not feasible.
