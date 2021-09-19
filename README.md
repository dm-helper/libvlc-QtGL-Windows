QtGl.pro

- PKGCONFIG = libvlc
+ # PKGCONFIG = libvlc

+win32: LIBS += -L$$PWD/vlc -llibvlc


qtvlcwidget.cpp

+#ifdef Q_OS_WIN
+    #include <BaseTsd.h>
+    typedef SSIZE_T ssize_t;
+#endif

+ everything to do with mBuffers[4] and m_idx_swap1 / m_idx_swap2

- m_media = libvlc_media_new_location (m_vlc, url);
+ m_media = libvlc_media_new_path(m_vlc, pathFile);

Memory leak:
- GL->glBindTexture(GL_TEXTURE_2D, fbo->takeTexture());

+ GLuint fboTexture = fbo->takeTexture();
+ GL->glBindTexture(GL_TEXTURE_2D, fboTexture);
...
+ GL->glDeleteTextures(1, &fboTexture);
