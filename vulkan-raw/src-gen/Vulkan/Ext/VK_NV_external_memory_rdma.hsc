{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_rdma

module Vulkan.Ext.VK_NV_external_memory_rdma
  ( pattern VK_NV_EXTERNAL_MEMORY_RDMA_SPEC_VERSION
  , pattern VK_NV_EXTERNAL_MEMORY_RDMA_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_MEMORY_GET_REMOTE_ADDRESS_INFO_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV
  , pattern VK_MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV
  , VkRemoteAddressNV
  , VkMemoryGetRemoteAddressInfoNV (..)
  , VkPhysicalDeviceExternalMemoryRDMAFeaturesNV (..)
  , VkGetMemoryRemoteAddressNV
  , vkFunGetMemoryRemoteAddressNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkMemoryPropertyFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMemoryGetRemoteAddressInfoNV
import Vulkan.Types.Struct.VkPhysicalDeviceExternalMemoryRDMAFeaturesNV
import Vulkan.Types.Command.VkGetMemoryRemoteAddressNV
import Vulkan.Types.VkFun



pattern VK_NV_EXTERNAL_MEMORY_RDMA_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_EXTERNAL_MEMORY_RDMA_SPEC_VERSION = 1

pattern VK_NV_EXTERNAL_MEMORY_RDMA_EXTENSION_NAME :: CString
pattern VK_NV_EXTERNAL_MEMORY_RDMA_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_EXTERNAL_MEMORY_RDMA_EXTENSION_NAME = Ptr ("VK_NV_external_memory_rdma\0"##)

#else

module Vulkan.Ext.VK_NV_external_memory_rdma where

#endif