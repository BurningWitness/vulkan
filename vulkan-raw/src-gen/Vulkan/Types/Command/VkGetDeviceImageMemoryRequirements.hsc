{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkGetDeviceImageMemoryRequirements where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirements
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetDeviceImageMemoryRequirements =
          VkDevice -- ^ device
       -> Ptr VkDeviceImageMemoryRequirements -- ^ pInfo
       -> Ptr VkMemoryRequirements2 -- ^ pMemoryRequirements
       -> IO ()

vkFunGetDeviceImageMemoryRequirements :: VkFun VkGetDeviceImageMemoryRequirements
vkFunGetDeviceImageMemoryRequirements = VkFun (Ptr ("vkGetDeviceImageMemoryRequirements\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkGetDeviceImageMemoryRequirements"
  vkGetDeviceImageMemoryRequirements
    :: VkGetDeviceImageMemoryRequirements

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceImageMemoryRequirements"
  vkGetDeviceImageMemoryRequirementsUnsafe
    :: VkGetDeviceImageMemoryRequirements
##endif

#else

module Vulkan.Types.Command.VkGetDeviceImageMemoryRequirements where

#endif