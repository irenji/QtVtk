TEMPLATE = app
TARGET = QtVtk
QT += core gui opengl quick quickcontrols2 qml

include(3rdparty/vtk.pri)

RESOURCES += \
    src/qml.qrc

HEADERS += \
    src/CanvasHandler.h \
    src/CommandModel.h \
    src/CommandModelAdd.h \
    src/CommandModelTranslate.h \
    src/Model.h \
    src/ProcessingEngine.h \
    src/QVTKFramebufferObjectItem.h \
    src/QVTKFramebufferObjectRenderer.h \

SOURCES += \
    src/CanvasHandler.cpp \
    src/CommandModel.cpp \
    src/CommandModelAdd.cpp \
    src/CommandModelTranslate.cpp \
    src/Model.cpp \
    src/ProcessingEngine.cpp \
    src/QVTKFramebufferObjectItem.cpp \
    src/QVTKFramebufferObjectRenderer.cpp \
    src/main.cpp \
