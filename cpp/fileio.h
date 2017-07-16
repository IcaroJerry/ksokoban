#ifndef FILEIO_H
#define FILEIO_H

#include <QObject>

class QFile;
class QTextStream;

class FileIO : public QObject
{
    Q_OBJECT
public:
    Q_PROPERTY(QString source
               READ source
               WRITE setSource
               NOTIFY sourceChanged)
    explicit FileIO(QObject *parent = 0);

    Q_INVOKABLE QString read();
    Q_INVOKABLE bool write(const QString& data);

    QString source();

public slots:
    void setSource(const QString& source);

signals:
    void error(const QString& msg);
    void sourceChanged(const QString& source);

private:
    QString mSource;
};

#endif // FILEIO_H
