{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_invocation_mask

module Vulkan.Ext.VK_HUAWEI_invocation_mask
  ( pattern VK_HUAWEI_INVOCATION_MASK_SPEC_VERSION
  , pattern VK_HUAWEI_INVOCATION_MASK_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI
  , pattern VK_ACCESS_2_INVOCATION_MASK_READ_BIT_HUAWEI
  , pattern VK_IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI
  , pattern VK_PIPELINE_STAGE_2_INVOCATION_MASK_BIT_HUAWEI
  , VkPhysicalDeviceInvocationMaskFeaturesHUAWEI (..)
  , VkCmdBindInvocationMaskHUAWEI
  , vkFunCmdBindInvocationMaskHUAWEI
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceInvocationMaskFeaturesHUAWEI
import Vulkan.Types.Command.VkCmdBindInvocationMaskHUAWEI
import Vulkan.Types.VkFun



pattern VK_HUAWEI_INVOCATION_MASK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_HUAWEI_INVOCATION_MASK_SPEC_VERSION = 1

pattern VK_HUAWEI_INVOCATION_MASK_EXTENSION_NAME :: CString
pattern VK_HUAWEI_INVOCATION_MASK_EXTENSION_NAME <- (const False -> True)
  where
    VK_HUAWEI_INVOCATION_MASK_EXTENSION_NAME = Ptr ("VK_HUAWEI_invocation_mask\0"##)

#else

module Vulkan.Ext.VK_HUAWEI_invocation_mask where

#endif