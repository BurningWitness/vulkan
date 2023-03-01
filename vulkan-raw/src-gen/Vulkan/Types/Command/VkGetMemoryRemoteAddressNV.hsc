{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_rdma

module Vulkan.Types.Command.VkGetMemoryRemoteAddressNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryGetRemoteAddressInfoNV
import Vulkan.Types.VkFun



type VkGetMemoryRemoteAddressNV =
          VkDevice -- ^ device
       -> Ptr VkMemoryGetRemoteAddressInfoNV -- ^ pMemoryGetRemoteAddressInfo
       -> Ptr VkRemoteAddressNV -- ^ pAddress
       -> IO VkResult

vkFunGetMemoryRemoteAddressNV :: VkFun VkGetMemoryRemoteAddressNV
vkFunGetMemoryRemoteAddressNV = VkFun (Ptr ("vkGetMemoryRemoteAddressNV\0"##))

#else

module Vulkan.Types.Command.VkGetMemoryRemoteAddressNV where

#endif