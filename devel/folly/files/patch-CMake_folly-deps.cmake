--- CMake/folly-deps.cmake.orig	2020-09-13 23:12:13 UTC
+++ CMake/folly-deps.cmake
@@ -159,7 +159,7 @@ find_package(Backtrace)
 set(FOLLY_HAVE_BACKTRACE ${Backtrace_FOUND})
 set(FOLLY_HAVE_DWARF ${LIBDWARF_FOUND})
 if (APPLE OR (FOLLY_HAVE_ELF AND FOLLY_HAVE_DWARF AND FOLLY_HAVE_BACKTRACE AND LIBUNWIND_FOUND))
-  set(FOLLY_USE_SYMBOLIZER ON)
+  set(FOLLY_USE_SYMBOLIZER ${FREEBSD_FOLLY_USE_SYMBOLIZER})
 endif()
 message(STATUS "Setting FOLLY_USE_SYMBOLIZER: ${FOLLY_USE_SYMBOLIZER}")
 message(STATUS "Setting FOLLY_HAVE_ELF: ${FOLLY_HAVE_ELF}")
