TEMPLATE = app
TARGET = qtglvlc

CONFIG += link_pkgconfig force_debug_info
# PKGCONFIG = libvlc
QT += widgets

SOURCES += main.cpp qtvlcwidget.cpp
HEADERS += qtvlcwidget.h

win32: LIBS += -L$$PWD/vlc -llibvlc
