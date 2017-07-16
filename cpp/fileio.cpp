#include "fileio.h"

#include <QDebug>
#include <QFile>
#include <QTextStream>

FileIO::FileIO(QObject *parent) : QObject(parent)
{
}

QString FileIO::read()
{
    if (mSource.isEmpty()) {
        emit error("source is empty");
        return QString();
    }

    QFile file(mSource);
    QString fileContent;

    if (file.open(QIODevice::ReadOnly)) {
        QString line;
        QTextStream t(&file);

        do {
            line = t.readLine();
            fileContent += line + "\n";
        } while (!line.isNull());

        file.close();
    } else {
        qDebug() << "cannot open file: " << mSource;
        emit error("Unable to open the file");
    }
    return fileContent;
}

bool FileIO::write(const QString& data)
{
    if (mSource.isEmpty())
        return false;

    QFile file(mSource);
    if (!file.open(QFile::WriteOnly | QFile::Truncate)) {
        return false;
    }

    QTextStream out(&file);
    out << data;

    file.close();

    return true;
}

QString FileIO::source()
{
    return mSource;
}

void FileIO::setSource(const QString &source)
{
    mSource = source;
}
