################################################################################
## VTK 8.x
################################################################################
macx:{
    VTK_VERSION=8.1
    VTK_DIR=/usr/local/opt/vtk
}
win32:{
    VTK_VERSION=8.1
    VTK_DIR=$$(VTK_DIR)
}

INCLUDEPATH += \
    $$VTK_DIR/include/vtk-$$VTK_VERSION/

LIBS += \
    -L$$VTK_DIR/lib/ \
        -lvtkCommonCore-$$VTK_VERSION \
        -lvtkCommonDataModel-$$VTK_VERSION \
        -lvtkCommonExecutionModel-$$VTK_VERSION \
        -lvtkCommonMath-$$VTK_VERSION \
        -lvtkCommonTransforms-$$VTK_VERSION \
        -lvtkFiltersCore-$$VTK_VERSION \
        -lvtkFiltersExtraction-$$VTK_VERSION \
        -lvtkFiltersGeneral-$$VTK_VERSION \
        -lvtkFiltersGeometry-$$VTK_VERSION \
        -lvtkFiltersSources-$$VTK_VERSION \
        -lvtkInteractionStyle-$$VTK_VERSION \
        -lvtkInteractionWidgets-$$VTK_VERSION \
        -lvtkIOCore-$$VTK_VERSION \
        -lvtkIOGeometry-$$VTK_VERSION \
        -lvtkIOPly-$$VTK_VERSION \
        -lvtkRenderingAnnotation-$$VTK_VERSION \
        -lvtkRenderingContextOpenGL2-$$VTK_VERSION \
        -lvtkRenderingCore-$$VTK_VERSION \
        -lvtkRenderingExternal-$$VTK_VERSION \
        -lvtkRenderingFreeType-$$VTK_VERSION \
        -lvtkRenderingLOD-$$VTK_VERSION \
        -lvtkRenderingOpenGL2-$$VTK_VERSION \
