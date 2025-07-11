cmake_minimum_required(VERSION 3.16)
project(SystemMonitorDashboard LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick)

add_executable(${PROJECT_NAME}
    src/main.cpp
    src/SystemStatsProvider.cpp
    src/SystemStatsProvider.h
    src/utils/SysInfo.cpp
)

target_include_directories(${PROJECT_NAME} PRIVATE src src/utils)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Core Qt6::Gui Qt6::Qml Qt6::Quick)