{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFeatures2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceFeatures2 -- ^ pFeatures
       -> IO ()

vkFunGetPhysicalDeviceFeatures2 :: VkFun VkGetPhysicalDeviceFeatures2
vkFunGetPhysicalDeviceFeatures2 = VkFun (Ptr ("vkGetPhysicalDeviceFeatures2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceFeatures2"
  vkGetPhysicalDeviceFeatures2
    :: VkGetPhysicalDeviceFeatures2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceFeatures2"
  vkGetPhysicalDeviceFeatures2Unsafe
    :: VkGetPhysicalDeviceFeatures2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2 where

#endif