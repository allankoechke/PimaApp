#include <QGuiApplication>
#include <QQmlApplicationEngine>

#if defined (Q_OS_ANDROID)
#include <QtAndroid>

const QVector<QString> permissions({"android.permission.ACCESS_COARSE_LOCATION",
                                    "android.permission.BLUETOOTH",
                                    "android.permission.BLUETOOTH_ADMIN",
                                    "android.permission.INTERNET",
                                    "android.permission.WRITE_EXTERNAL_STORAGE",
                                    "android.permission.READ_EXTERNAL_STORAGE"});

#endif

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

#if defined (Q_OS_ANDROID)
    // Request required permissions at runtime
    for(const QString &permissions: permissions)
    {
        auto result = QtAndroid::checkPermission(permissions);
        if(result == QtAndroid::PermissionResult::Denied)
        {
            auto resultHash = QtAndroid::requestPermissionsSync(QStringList({permissions}));
            if(resultHash[permissions] == QtAndroid::PermissionResult::Denied)
                return 0;
        }
    }
#endif

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
