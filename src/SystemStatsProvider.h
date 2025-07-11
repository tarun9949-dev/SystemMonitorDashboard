#ifndef SYSTEMSTATSPROVIDER_H
#define SYSTEMSTATSPROVIDER_H

#include <QObject>

class SystemStatsProvider : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString cpuUsage READ cpuUsage NOTIFY statsUpdated)
    Q_PROPERTY(QString memoryUsage READ memoryUsage NOTIFY statsUpdated)

public:
    explicit SystemStatsProvider(QObject *parent = nullptr);
    QString cpuUsage() const;
    QString memoryUsage() const;

signals:
    void statsUpdated();

public slots:
    void updateStats();

private:
    QString m_cpuUsage;
    QString m_memoryUsage;
};

#endif // SYSTEMSTATSPROVIDER_H