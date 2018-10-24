#include "CanvasHandler.h"

#include <QSurfaceFormat>

//! TODO not sure if this (VTK_MODULE_INIT stuff) belongs here
#include <vtkAutoInit.h>
VTK_MODULE_INIT(vtkInteractionStyle)
VTK_MODULE_INIT(vtkRenderingOpenGL2)
VTK_MODULE_INIT(vtkRenderingFreeType)

int main(int argc, char **argv)
{
#ifdef __linux
	putenv((char *)"MESA_GL_VERSION_OVERRIDE=3.2");

	// Fixes decimal point issue in vtkSTLReader
	putenv((char *)"LC_NUMERIC=C");
#endif //LINUX

	QSurfaceFormat fmt;
	fmt.setRenderableType(QSurfaceFormat::OpenGL);
	fmt.setVersion(3, 2);
	fmt.setProfile(QSurfaceFormat::CoreProfile);
	fmt.setSwapBehavior(QSurfaceFormat::DoubleBuffer);
	fmt.setRedBufferSize(8);
	fmt.setGreenBufferSize(8);
	fmt.setBlueBufferSize(8);
	fmt.setDepthBufferSize(24);
	fmt.setStencilBufferSize(8);
	fmt.setAlphaBufferSize(0);
	fmt.setStereo(false);
	fmt.setSamples(0);
//	fmt.setOption(QSurfaceFormat::DebugContext);
	QSurfaceFormat::setDefaultFormat(fmt);

	CanvasHandler(argc, argv);

	return 0;
}
