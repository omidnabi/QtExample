/****************************************************************************
** Resource object code
**
** Created by: The Resource Compiler for Qt version 6.6.0
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

static const unsigned char qt_resource_data[] = {
  // /home/omidnabi/Working/QtExample/ExampleLib/ExampleRect.qml
  0x0,0x0,0x0,0x50,
  0x69,
  0x6d,0x70,0x6f,0x72,0x74,0x20,0x51,0x74,0x51,0x75,0x69,0x63,0x6b,0x20,0x32,0x2e,
  0x30,0xa,0xa,0x52,0x65,0x63,0x74,0x61,0x6e,0x67,0x6c,0x65,0x20,0x7b,0xa,0x20,
  0x20,0x20,0x20,0x77,0x69,0x64,0x74,0x68,0x3a,0x20,0x32,0x30,0x30,0x3b,0x20,0x68,
  0x65,0x69,0x67,0x68,0x74,0x3a,0x20,0x32,0x30,0x30,0xa,0x20,0x20,0x20,0x20,0x63,
  0x6f,0x6c,0x6f,0x72,0x3a,0x20,0x22,0x72,0x65,0x64,0x22,0xa,0x7d,0xa,0xa,
  
};

static const unsigned char qt_resource_name[] = {
  // ExampleRect.qml
  0x0,0xf,
  0xb,0x28,0x32,0x9c,
  0x0,0x45,
  0x0,0x78,0x0,0x61,0x0,0x6d,0x0,0x70,0x0,0x6c,0x0,0x65,0x0,0x52,0x0,0x65,0x0,0x63,0x0,0x74,0x0,0x2e,0x0,0x71,0x0,0x6d,0x0,0x6c,
  
};

static const unsigned char qt_resource_struct[] = {
  // :
  0x0,0x0,0x0,0x0,0x0,0x2,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x1,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
  // :/ExampleRect.qml
  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,
0x0,0x0,0x1,0x8e,0xaa,0xbe,0x62,0xac,

};

#ifdef QT_NAMESPACE
#  define QT_RCC_PREPEND_NAMESPACE(name) ::QT_NAMESPACE::name
#  define QT_RCC_MANGLE_NAMESPACE0(x) x
#  define QT_RCC_MANGLE_NAMESPACE1(a, b) a##_##b
#  define QT_RCC_MANGLE_NAMESPACE2(a, b) QT_RCC_MANGLE_NAMESPACE1(a,b)
#  define QT_RCC_MANGLE_NAMESPACE(name) QT_RCC_MANGLE_NAMESPACE2( \
        QT_RCC_MANGLE_NAMESPACE0(name), QT_RCC_MANGLE_NAMESPACE0(QT_NAMESPACE))
#else
#   define QT_RCC_PREPEND_NAMESPACE(name) name
#   define QT_RCC_MANGLE_NAMESPACE(name) name
#endif

#ifdef QT_NAMESPACE
namespace QT_NAMESPACE {
#endif

bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);
bool qUnregisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);

#ifdef QT_NAMESPACE
}
#endif

int QT_RCC_MANGLE_NAMESPACE(qInitResources_examplelib)();
int QT_RCC_MANGLE_NAMESPACE(qInitResources_examplelib)()
{
    int version = 3;
    QT_RCC_PREPEND_NAMESPACE(qRegisterResourceData)
        (version, qt_resource_struct, qt_resource_name, qt_resource_data);
    return 1;
}

int QT_RCC_MANGLE_NAMESPACE(qCleanupResources_examplelib)();
int QT_RCC_MANGLE_NAMESPACE(qCleanupResources_examplelib)()
{
    int version = 3;
    QT_RCC_PREPEND_NAMESPACE(qUnregisterResourceData)
       (version, qt_resource_struct, qt_resource_name, qt_resource_data);
    return 1;
}

#ifdef __clang__
#   pragma clang diagnostic push
#   pragma clang diagnostic ignored "-Wexit-time-destructors"
#endif

namespace {
   struct initializer {
       initializer() { QT_RCC_MANGLE_NAMESPACE(qInitResources_examplelib)(); }
       ~initializer() { QT_RCC_MANGLE_NAMESPACE(qCleanupResources_examplelib)(); }
   } dummy;
}

#ifdef __clang__
#   pragma clang diagnostic pop
#endif
