/****************************************************************************
** Meta object code from reading C++ file 'drgui_tool_interface.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.6.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "drgui_tool_interface.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'drgui_tool_interface.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.6.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_drgui_tool_interface_t_t {
    QByteArrayData data[6];
    char stringdata0[71];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_drgui_tool_interface_t_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_drgui_tool_interface_t_t qt_meta_stringdata_drgui_tool_interface_t = {
    {
QT_MOC_LITERAL(0, 0, 22), // "drgui_tool_interface_t"
QT_MOC_LITERAL(1, 23, 22), // "new_instance_requested"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 8), // "QWidget*"
QT_MOC_LITERAL(4, 56, 4), // "tool"
QT_MOC_LITERAL(5, 61, 9) // "tool_name"

    },
    "drgui_tool_interface_t\0new_instance_requested\0"
    "\0QWidget*\0tool\0tool_name"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_drgui_tool_interface_t[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   19,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3, QMetaType::QString,    4,    5,

       0        // eod
};

void drgui_tool_interface_t::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        drgui_tool_interface_t *_t = static_cast<drgui_tool_interface_t *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->new_instance_requested((*reinterpret_cast< QWidget*(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (drgui_tool_interface_t::*_t)(QWidget * , QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&drgui_tool_interface_t::new_instance_requested)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject drgui_tool_interface_t::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_drgui_tool_interface_t.data,
      qt_meta_data_drgui_tool_interface_t,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *drgui_tool_interface_t::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *drgui_tool_interface_t::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_drgui_tool_interface_t.stringdata0))
        return static_cast<void*>(const_cast< drgui_tool_interface_t*>(this));
    return QWidget::qt_metacast(_clname);
}

int drgui_tool_interface_t::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}

// SIGNAL 0
void drgui_tool_interface_t::new_instance_requested(QWidget * _t1, QString _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
