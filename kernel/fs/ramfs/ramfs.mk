NAME := ramfs

$(NAME)_MBINS_TYPE := kernel
$(NAME)_VERSION := 0.0.1
$(NAME)_SUMMARY :=

$(NAME)_SOURCES     += ramfs.c
$(NAME)_SOURCES     += ramfs_alios.c

#default gcc
ifeq ($(COMPILER),)
$(NAME)_CFLAGS      += -Wall -Werror
else ifeq ($(COMPILER),gcc)
$(NAME)_CFLAGS      += -Wall -Werror
endif

GLOBAL_INCLUDES     += .
GLOBAL_INCLUDES     += include
GLOBAL_DEFINES      += AOS_RAMFS