{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeatures where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeviceGroupPeerMemoryFeatures =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ heapIndex
       -> #{type uint32_t} -- ^ localDeviceIndex
       -> #{type uint32_t} -- ^ remoteDeviceIndex
       -> Ptr VkPeerMemoryFeatureFlags -- ^ pPeerMemoryFeatures
       -> IO ()

vkFunGetDeviceGroupPeerMemoryFeatures :: VkFun VkGetDeviceGroupPeerMemoryFeatures
vkFunGetDeviceGroupPeerMemoryFeatures = VkFun (Ptr ("vkGetDeviceGroupPeerMemoryFeatures\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetDeviceGroupPeerMemoryFeatures"
  vkGetDeviceGroupPeerMemoryFeatures
    :: VkGetDeviceGroupPeerMemoryFeatures

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceGroupPeerMemoryFeatures"
  vkGetDeviceGroupPeerMemoryFeaturesUnsafe
    :: VkGetDeviceGroupPeerMemoryFeatures
##endif

#else

module Vulkan.Types.Command.VkGetDeviceGroupPeerMemoryFeatures where

#endif