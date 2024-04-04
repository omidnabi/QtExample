#ifndef EXAMPLELIBCLASS_H
#define EXAMPLELIBCLASS_H

#include <QObject>

class ExampleLibClass : public QObject
{
    Q_OBJECT
public:
    explicit ExampleLibClass(QObject *parent = nullptr);

signals:

public slots:
};

#endif // EXAMPLELIBCLASS_H

