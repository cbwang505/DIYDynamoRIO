/****************************************************************************
** Meta object code from reading C++ file 'drgui_options_window.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.6.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "drgui_options_window.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'drgui_options_window.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.6.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_drgui_options_window_t_t {
    QByteArrayData data[8];
    char stringdata0[82];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_drgui_options_window_t_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_drgui_options_window_t_t qt_meta_stringdata_drgui_options_window_t = {
    {
QT_MOC_LITERAL(0, 0, 22), // "drgui_options_window_t"
QT_MOC_LITERAL(1, 23, 11), // "change_page"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 16), // "QListWidgetItem*"
QT_MOC_LITERAL(4, 53, 7), // "current"
QT_MOC_LITERAL(5, 61, 8), // "previous"
QT_MOC_LITERAL(6, 70, 4), // "save"
QT_MOC_LITERAL(7, 75, 6) // "cancel"

    },
    "drgui_options_window_t\0change_page\0\0"
    "QListWidgetItem*\0current\0previous\0"
    "save\0cancel"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_drgui_options_window_t[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   29,    2, 0x0a /* Public */,
       6,    0,   34,    2, 0x08 /* Private */,
       7,    0,   35,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 3,    4,    5,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void drgui_options_window_t::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        drgui_options_window_t *_t = static_cast<drgui_options_window_t *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->change_page((*reinterpret_cast< QListWidgetItem*(*)>(_a[1])),(*reinterpret_cast< QListWidgetItem*(*)>(_a[2]))); break;
        case 1: _t->save(); break;
        case 2: _t->cancel(); break;
        default: ;
        }
    }
}

const QMetaObject drgui_options_window_t::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_drgui_options_window_t.data,
      qt_meta_data_drgui_options_window_t,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *drgui_options_window_t::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *drgui_options_window_t::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_drgui_options_window_t.stringdata0))
        return static_cast<void*>(const_cast< drgui_options_window_t*>(this));
    return QDialog::qt_metacast(_clname);
}

int drgui_options_window_t::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
