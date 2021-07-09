#
# Copyright (c) 2021, ARM Limited and Contributors. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#

ifneq (${ARCH},aarch64)
        $(error "Error: RMMD is only supported on aarch64.")
endif

RMMD_SOURCES	+=	$(addprefix services/std_svc/rmmd/,	\
			${ARCH}/rmmd_helpers.S			\
			rmmd_main.c)
