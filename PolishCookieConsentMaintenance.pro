#-------------------------------------------------
#
# Project created by QtCreator 2019-03-11T12:29:39
#
#-------------------------------------------------

QT       += core gui network texttospeech

CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PolishCookieConsentMaintenance
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        Widget.cpp \
    Downloader.cpp

HEADERS += \
        Widget.h \
    Downloader.h

FORMS += \
        Widget.ui

RESOURCES += \
    resources.qrc

VERSION = 1.3
RC_ICONS = icons/icon128.ico
QMAKE_TARGET_COMPANY = "Polish Filters Team"
QMAKE_TARGET_COPYRIGHT = "Copyright \\251 2019 Polish Filters Team"
QMAKE_TARGET_DESCRIPTION = "Polish Cookie Consent Maintenance"
QMAKE_TARGET_PRODUCT = "Polish Cookie Consent Maintenance"

TRANSLATIONS = translations/pl.ts

win32:INCLUDEPATH += $$PWD/../3rdparty/quazip/include
win32:LIBS += -L"$$PWD/../3rdparty/quazip/bin" -lquazip
win32:LIBS += -L"$$PWD/../3rdparty/openssl/bin" -llibeay32
win32:LIBS += -L"$$PWD/../3rdparty/openssl/bin" -lssleay32
unix:INCLUDEPATH += /usr/include/quazip
unix:LIBS += -L"/usr/lib/x86_64-linux-gnu" -lquazip

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
