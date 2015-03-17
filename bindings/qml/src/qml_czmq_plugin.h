/*
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
*/

#ifndef QML_CZMQ_PLUGIN_H
#define QML_CZMQ_PLUGIN_H

#include <QQmlExtensionPlugin>
#include <qqml.h>

class QmlZactor;
class QmlZactorAttached;
class QmlZdir;
class QmlZdirAttached;
class QmlZdirPatch;
class QmlZdirPatchAttached;
class QmlZfile;
class QmlZfileAttached;
class QmlZframe;
class QmlZframeAttached;
class QmlZiflist;
class QmlZiflistAttached;
class QmlZloop;
class QmlZloopAttached;
class QmlZmsg;
class QmlZmsgAttached;
class QmlZsock;
class QmlZsockAttached;
class QmlZhash;
class QmlZhashAttached;
class QmlZlist;
class QmlZlistAttached;

#include "QmlZactor.h"
#include "QmlZdir.h"
#include "QmlZdirPatch.h"
#include "QmlZfile.h"
#include "QmlZframe.h"
#include "QmlZiflist.h"
#include "QmlZloop.h"
#include "QmlZmsg.h"
#include "QmlZsock.h"
#include "QmlZhash.h"
#include "QmlZlist.h"

class QmlCZMQPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA (IID "org.qt-project.Qt.QQmlExtensionInterface")
    
public:
    void registerTypes (const char *uri)
    {
        qmlRegisterType<QmlZactor> (uri, 1, 0, "QmlZactor");
        qmlRegisterType<QmlZactorAttached>();
        qmlRegisterType<QmlZdir> (uri, 1, 0, "QmlZdir");
        qmlRegisterType<QmlZdirAttached>();
        qmlRegisterType<QmlZdirPatch> (uri, 1, 0, "QmlZdirPatch");
        qmlRegisterType<QmlZdirPatchAttached>();
        qmlRegisterType<QmlZfile> (uri, 1, 0, "QmlZfile");
        qmlRegisterType<QmlZfileAttached>();
        qmlRegisterType<QmlZframe> (uri, 1, 0, "QmlZframe");
        qmlRegisterType<QmlZframeAttached>();
        qmlRegisterType<QmlZiflist> (uri, 1, 0, "QmlZiflist");
        qmlRegisterType<QmlZiflistAttached>();
        qmlRegisterType<QmlZloop> (uri, 1, 0, "QmlZloop");
        qmlRegisterType<QmlZloopAttached>();
        qmlRegisterType<QmlZmsg> (uri, 1, 0, "QmlZmsg");
        qmlRegisterType<QmlZmsgAttached>();
        qmlRegisterType<QmlZsock> (uri, 1, 0, "QmlZsock");
        qmlRegisterType<QmlZsockAttached>();
        qmlRegisterType<QmlZhash> (uri, 1, 0, "QmlZhash");
        qmlRegisterType<QmlZhashAttached>();
        qmlRegisterType<QmlZlist> (uri, 1, 0, "QmlZlist");
        qmlRegisterType<QmlZlistAttached>();
    };
};

#endif

/*
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
*/
