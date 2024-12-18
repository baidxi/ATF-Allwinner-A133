#
# Copyright (c) 2017-2020, ARM Limited. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#

SUNXI_BL31_IN_DRAM	:=	1

# Without a management processor there is no SCPI support.
SUNXI_PSCI_USE_SCPI	:=	1
SUNXI_PSCI_USE_NATIVE	:=	1

# The differences between the platforms are covered by the include files.
include plat/allwinner/common/allwinner-common.mk

BL31_SOURCES		+=	drivers/allwinner/axp/axp805.c		\
				drivers/allwinner/sunxi_rsb.c		\
