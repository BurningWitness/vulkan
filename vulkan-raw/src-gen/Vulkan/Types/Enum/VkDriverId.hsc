{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDriverId where

import Data.Int



#if VK_VERSION_1_2
type VkDriverId = #{type int}
#endif

#if VK_VERSION_1_2
-- | Advanced Micro Devices, Inc.
pattern VK_DRIVER_ID_AMD_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_AMD_PROPRIETARY = 1
#endif

#if VK_VERSION_1_2
-- | Advanced Micro Devices, Inc.
pattern VK_DRIVER_ID_AMD_OPEN_SOURCE :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_AMD_OPEN_SOURCE = 2
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_RADV :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_RADV = 3
#endif

#if VK_VERSION_1_2
-- | NVIDIA Corporation
pattern VK_DRIVER_ID_NVIDIA_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_NVIDIA_PROPRIETARY = 4
#endif

#if VK_VERSION_1_2
-- | Intel Corporation
pattern VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS = 5
#endif

#if VK_VERSION_1_2
-- | Intel Corporation
pattern VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA = 6
#endif

#if VK_VERSION_1_2
-- | Imagination Technologies
pattern VK_DRIVER_ID_IMAGINATION_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_IMAGINATION_PROPRIETARY = 7
#endif

#if VK_VERSION_1_2
-- | Qualcomm Technologies, Inc.
pattern VK_DRIVER_ID_QUALCOMM_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_QUALCOMM_PROPRIETARY = 8
#endif

#if VK_VERSION_1_2
-- | Arm Limited
pattern VK_DRIVER_ID_ARM_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_ARM_PROPRIETARY = 9
#endif

#if VK_VERSION_1_2
-- | Google LLC
pattern VK_DRIVER_ID_GOOGLE_SWIFTSHADER :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_GOOGLE_SWIFTSHADER = 10
#endif

#if VK_VERSION_1_2
-- | Google LLC
pattern VK_DRIVER_ID_GGP_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_GGP_PROPRIETARY = 11
#endif

#if VK_VERSION_1_2
-- | Broadcom Inc.
pattern VK_DRIVER_ID_BROADCOM_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_BROADCOM_PROPRIETARY = 12
#endif

#if VK_VERSION_1_2
-- | Mesa
pattern VK_DRIVER_ID_MESA_LLVMPIPE :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_LLVMPIPE = 13
#endif

#if VK_VERSION_1_2
-- | MoltenVK
pattern VK_DRIVER_ID_MOLTENVK :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MOLTENVK = 14
#endif

#if VK_VERSION_1_2
-- | Core Avionics & Industrial Inc.
pattern VK_DRIVER_ID_COREAVI_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_COREAVI_PROPRIETARY = 15
#endif

#if VK_VERSION_1_2
-- | Juice Technologies, Inc.
pattern VK_DRIVER_ID_JUICE_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_JUICE_PROPRIETARY = 16
#endif

#if VK_VERSION_1_2
-- | Verisilicon, Inc.
pattern VK_DRIVER_ID_VERISILICON_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_VERISILICON_PROPRIETARY = 17
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_TURNIP :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_TURNIP = 18
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_V3DV :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_V3DV = 19
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_PANVK :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_PANVK = 20
#endif

#if VK_VERSION_1_2
-- | Samsung Electronics Co., Ltd.
pattern VK_DRIVER_ID_SAMSUNG_PROPRIETARY :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_SAMSUNG_PROPRIETARY = 21
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_VENUS :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_VENUS = 22
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_DOZEN :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_DOZEN = 23
#endif

#if VK_VERSION_1_2
-- | Mesa open source project
pattern VK_DRIVER_ID_MESA_NVK :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_NVK = 24
#endif

#if VK_VERSION_1_2
-- | Imagination Technologies
pattern VK_DRIVER_ID_IMAGINATION_OPEN_SOURCE_MESA :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_IMAGINATION_OPEN_SOURCE_MESA = 25
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_AMD_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_AMD_PROPRIETARY_KHR = 1
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR = 2
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_MESA_RADV_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_MESA_RADV_KHR = 3
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR = 4
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR = 5
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR = 6
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR = 7
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR = 8
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_ARM_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_ARM_PROPRIETARY_KHR = 9
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR = 10
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_GGP_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_GGP_PROPRIETARY_KHR = 11
#endif

#if VK_VERSION_1_2
pattern VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR :: (Eq a, Num a) => a
pattern VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR = 12
#endif