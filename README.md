# System Monitor Dashboard

A lightweight Qt6/QML desktop application that displays live system stats (CPU, memory, network) with a real-time, responsive UI.

## Features
- Built with Qt6 and QML using C++17
- Live CPU, memory, and network usage display
- QML dashboard with JavaScript logic and animations
- C++ to QML data bridge via signals/slots
- Responsive and themable UI
- Optimized with Valgrind and Qt Profiler

## Build Instructions
```bash
mkdir build && cd build
cmake ..
make
./SystemMonitorDashboard
```