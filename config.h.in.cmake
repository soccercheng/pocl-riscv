
#ifndef POCL_CONFIG_H
#define POCL_CONFIG_H


#cmakedefine BUILD_HSA
#cmakedefine BUILD_CUDA
#cmakedefine BUILD_BASIC
#cmakedefine BUILD_TBB
#cmakedefine BUILD_PTHREAD
#cmakedefine BUILD_ALMAIF
#cmakedefine BUILD_VULKAN
#cmakedefine BUILD_LEVEL0
#cmakedefine BUILD_REMOTE_SERVER
#cmakedefine BUILD_REMOTE_CLIENT
#cmakedefine BUILD_PROXY

#define BUILDDIR "@BUILDDIR@"

/* "Build with ICD" */
#cmakedefine BUILD_ICD

#define CMAKE_BUILD_TYPE "@CMAKE_BUILD_TYPE@"

#cmakedefine DEVELOPER_MODE

#cmakedefine HAVE_CLSPV
#define CLSPV "@CLSPV@"
#define CLSPV_REFLECTION "@CLSPV_REFLECTION@"

#cmakedefine ENABLE_ASAN
#cmakedefine ENABLE_LSAN
#cmakedefine ENABLE_TSAN
#cmakedefine ENABLE_UBSAN

#cmakedefine ENABLE_EXTRA_VALIDITY_CHECKS

#cmakedefine ENABLE_CONFORMANCE

#cmakedefine ENABLE_RDMA

#cmakedefine ENABLE_HWLOC

#cmakedefine ENABLE_HOST_CPU_DEVICES

#cmakedefine ENABLE_POCL_BUILDING

#cmakedefine ENABLE_PTHREAD_FINISH_FN

#cmakedefine ENABLE_LLVM_PLATFORM_SUPPORT

#cmakedefine ENABLE_PRINTF_IMMEDIATE_FLUSH

#cmakedefine ENABLE_SIGFPE_HANDLER

#cmakedefine ENABLE_SIGUSR2_HANDLER

#cmakedefine ENABLE_REMOTE_DISCOVERY_AVAHI

#cmakedefine ENABLE_REMOTE_DISCOVERY_DHT

#cmakedefine ENABLE_REMOTE_DISCOVERY_ANDROID

#cmakedefine ENABLE_REMOTE_ADVERTISEMENT_AVAHI

#cmakedefine ENABLE_REMOTE_ADVERTISEMENT_DHT

#cmakedefine ENABLE_RELOCATION

#cmakedefine ENABLE_EGL_INTEROP
#cmakedefine ENABLE_OPENGL_INTEROP

#ifdef ENABLE_OPENGL_INTEROP
#cmakedefine ENABLE_CL_GET_GL_CONTEXT
#endif

#cmakedefine ENABLE_SLEEF

#cmakedefine ENABLE_SPIRV

#cmakedefine ENABLE_VALGRIND

#cmakedefine HAVE_DLFCN_H

#cmakedefine HAVE_FORK

#cmakedefine HAVE_VFORK

#cmakedefine HAVE_LINUX_VSOCK_H

#cmakedefine HAVE_CLOCK_GETTIME

#cmakedefine HOST_COMPILER_SUPPORTS_FLOAT16

#cmakedefine HAVE_FDATASYNC

#cmakedefine HAVE_FSYNC

#cmakedefine HAVE_GETRLIMIT

#cmakedefine HAVE_MKOSTEMPS

#cmakedefine HAVE_MKSTEMPS

#cmakedefine HAVE_MKDTEMP

#cmakedefine HAVE_FUTIMENS

#cmakedefine HAVE_LTTNG_UST

#cmakedefine HAVE_LIBXSMM

#cmakedefine HAVE_LIBJPEG_TURBO

#cmakedefine HAVE_ONNXRT

#cmakedefine HAVE_OPENCV

#cmakedefine HAVE_OCL_ICD
#cmakedefine HAVE_OCL_ICD_30_COMPATIBLE

#cmakedefine HAVE_POSIX_MEMALIGN

#cmakedefine HAVE_SLEEP

#cmakedefine HAVE_UTIME

#cmakedefine HAVE_XRT

#cmakedefine ENABLE_LLVM

#cmakedefine ENABLE_LOADABLE_DRIVERS

/* this is used all over the runtime code */
#define HOST_CPU_CACHELINE_SIZE @HOST_CPU_CACHELINE_SIZE@

#if defined(BUILD_CUDA)

#define CUDA_DEVICE_EXTENSIONS "@CUDA_DEVICE_EXTENSIONS@"

#define CUDA_DEVICE_FEATURES_30 "@CUDA_DEVICE_FEATURES_30@"

#endif

#if defined(ENABLE_HOST_CPU_DEVICES)

#cmakedefine ENABLE_HOST_CPU_DEVICES_OPENMP

#define HOST_AS_FLAGS  "@HOST_AS_FLAGS@"

#define HOST_CLANG_FLAGS  "@HOST_CLANG_FLAGS@"

#define HOST_DEVICE_EXTENSIONS "@HOST_DEVICE_EXTENSIONS@"

#define HOST_DEVICE_FEATURES_30 "@HOST_DEVICE_FEATURES_30@"

#cmakedefine HOST_CPU_FORCED

#cmakedefine HOST_CPU_ENABLE_DENORMS

#cmakedefine HOST_CPU_ENABLE_STACK_SIZE_CHECK

#cmakedefine ENABLE_HOST_CPU_VECTORIZE_BUILTINS

#cmakedefine ENABLE_HOST_CPU_VECTORIZE_LIBMVEC

#cmakedefine ENABLE_HOST_CPU_VECTORIZE_SLEEF

#cmakedefine ENABLE_HOST_CPU_VECTORIZE_SVML

#define HOST_LD_FLAGS  "@HOST_LD_FLAGS@"

#define HOST_LLC_FLAGS  "@HOST_LLC_FLAGS@"

#define HOST_CPU_TARGET_ABI "@HOST_CPU_TARGET_ABI@"

#endif

#define HOST_DEVICE_BUILD_HASH "@HOST_DEVICE_BUILD_HASH@"

#define DEFAULT_DEVICE_EXTENSIONS "@DEFAULT_DEVICE_EXTENSIONS@"

#ifdef BUILD_HSA

#cmakedefine HAVE_HSA_EXT_AMD_H

#define AMD_HSA @AMD_HSA@

#define HSA_DEVICE_EXTENSIONS "@HSA_DEVICE_EXTENSIONS@"

#define HSAIL_ASM "@HSAIL_ASM@"

#define HSAIL_ENABLED @HSAIL_ENABLED@

#endif


#define CMAKE_BUILD_TYPE "@CMAKE_BUILD_TYPE@"



#ifdef BUILD_LEVEL0

#define CLANGCC "@CLANG@"

#cmakedefine ENABLE_NPU

#define LLVM_SPIRV "@LLVM_SPIRV@"

#cmakedefine ENABLE_LEVEL0_EXTRA_FEATURES

#cmakedefine HAVE_LLVM_SPIRV_LIB

#endif



#ifdef ENABLE_LLVM

#define KERNELLIB_HOST_CPU_VARIANTS "@KERNELLIB_HOST_CPU_VARIANTS@"

#cmakedefine KERNELLIB_HOST_DISTRO_VARIANTS

#define CLANGCC "@CLANG@"

#define CLANG_RESOURCE_DIR "@CLANG_RESOURCE_DIR@"

#define CLANGXX "@CLANGXX@"

#define CLANG_MARCH_FLAG "@CLANG_MARCH_FLAG@"

#define LLVM_LLC "@LLVM_LLC@"

#define LLVM_SPIRV "@LLVM_SPIRV@"

#define LLVM_OPT "@LLVM_OPT@"

#define LLVM_LINK "@LLVM_LINK@"

#define LLVM_MAJOR @LLVM_VERSION_MAJOR@

#cmakedefine LLVM_BUILD_MODE_DEBUG

#ifndef LLVM_VERSION
#define LLVM_VERSION "@LLVM_VERSION_FULL@"
#endif

#define LLVM_VERIFY_MODULE_DEFAULT @LLVM_VERIFY_MODULE_DEFAULT@

#cmakedefine LLVM_OPAQUE_POINTERS

#endif



#define PRINTF_BUFFER_SIZE @PRINTF_BUFFER_SIZE@

/* used in lib/CL/devices/basic */
#define OCL_KERNEL_TARGET  "@OCL_KERNEL_TARGET@"
#define OCL_KERNEL_TARGET_CPU  "@OCL_KERNEL_TARGET_CPU@"

#define POCL_KERNEL_CACHE_DEFAULT @POCL_KERNEL_CACHE_DEFAULT@

#define HOST_DEVICE_ADDRESS_BITS @HOST_DEVICE_ADDRESS_BITS@

#cmakedefine POCL_DEBUG_MESSAGES

#define POCL_INSTALL_PRIVATE_HEADER_DIR "@POCL_INSTALL_PRIVATE_HEADER_DIR@"

#define POCL_INSTALL_PRIVATE_DATADIR "@POCL_INSTALL_PRIVATE_DATADIR@"

#define POCL_INSTALL_FROM_LIB_TO_PRIVATE_DATADIR "@POCL_INSTALL_FROM_LIB_TO_PRIVATE_DATADIR@"

#define POCL_INSTALL_PRIVATE_LIBDIR "@POCL_INSTALL_PRIVATE_LIBDIR@"

#define POCL_INSTALL_LIBDIR "@POCL_INSTALL_PUBLIC_LIBDIR@"

#define POCL_INSTALL_FROM_LIB_TO_PRIVATE_LIBDIR "@POCL_INSTALL_FROM_LIB_TO_PRIVATE_LIBDIR@"

#cmakedefine POCL_ASSERTS_BUILD

/* these are *host* values */

/* used in tce_common.c & pocl_llvm_api.cc  */
#define SRCDIR  "@SRCDIR@"

#cmakedefine TCEMC_AVAILABLE

#cmakedefine TCE_AVAILABLE

#define TCE_DEVICE_EXTENSIONS "@TCE_DEVICE_EXTENSIONS@"

#define OACC_EXECUTABLE "@TCECC@"

/* Defined on big endian systems */
#define WORDS_BIGENDIAN @WORDS_BIGENDIAN@

/* platform version */
#define POCL_PLATFORM_VERSION_MAJOR 3
#define POCL_PLATFORM_VERSION_MINOR 0
#define POCL_PLATFORM_VERSION_PATCH 0

#define HSA_DEVICE_CL_VERSION_MAJOR 1
#define HSA_DEVICE_CL_VERSION_MINOR 2

#define CUDA_DEVICE_CL_VERSION_MAJOR @CUDA_DEVICE_CL_VERSION_MAJOR@
#define CUDA_DEVICE_CL_VERSION_MINOR @CUDA_DEVICE_CL_VERSION_MINOR@

#define HOST_DEVICE_CL_VERSION_MAJOR @HOST_DEVICE_CL_VERSION_MAJOR@
#define HOST_DEVICE_CL_VERSION_MINOR @HOST_DEVICE_CL_VERSION_MINOR@

#define TCE_DEVICE_CL_VERSION_MAJOR 1
#define TCE_DEVICE_CL_VERSION_MINOR 2


#cmakedefine USE_POCL_MEMMANAGER

#cmakedefine RENAME_POCL

#cmakedefine KERNEL_TRIPLE_TARGETS_MSVC_TOOLCHAIN

#cmakedefine CMAKE_COMMAND "@CMAKE_COMMAND@"

#endif
