#ifndef EXAMPLELIBCLASS_H
#define EXAMPLELIBCLASS_H

#include <QObject>

#if defined(BUILDING_EXAMPLELIB)
#define EXAMPLELIB_EXPORT Q_DECL_EXPORT
#else
#define EXAMPLELIB_EXPORT Q_DECL_IMPORT
#endif

class EXAMPLELIB_EXPORT ExampleLibClass : public QObject {
    Q_OBJECT
public:
    explicit ExampleLibClass(QObject *parent = nullptr);
};

#endif // EXAMPLELIBCLASS_H
