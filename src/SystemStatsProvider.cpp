#include "SystemStatsProvider.h"
#include "utils/SysInfo.cpp"

SystemStatsProvider::SystemStatsProvider(QObject *parent)
    : QObject(parent), m_cpuUsage("0%"), m_memoryUsage("0%") {
    updateStats();
}

QString SystemStatsProvider::cpuUsage() const {
    return m_cpuUsage;
}

QString SystemStatsProvider::memoryUsage() const {
    return m_memoryUsage;
}

void SystemStatsProvider::updateStats() {
    m_cpuUsage = SysInfo::getCpuUsage();
    m_memoryUsage = SysInfo::getMemoryUsage();
    emit statsUpdated();
}