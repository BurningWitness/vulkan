{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirements where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirements
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetDeviceImageSparseMemoryRequirements =
          VkDevice -- ^ device
       -> Ptr VkDeviceImageMemoryRequirements -- ^ pInfo
       -> Ptr #{type uint32_t} -- ^ pSparseMemoryRequirementCount
       -> Ptr VkSparseImageMemoryRequirements2 -- ^ pSparseMemoryRequirements
       -> IO ()

vkFunGetDeviceImageSparseMemoryRequirements :: VkFun VkGetDeviceImageSparseMemoryRequirements
vkFunGetDeviceImageSparseMemoryRequirements = VkFun (Ptr ("vkGetDeviceImageSparseMemoryRequirements\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkGetDeviceImageSparseMemoryRequirements"
  vkGetDeviceImageSparseMemoryRequirements
    :: VkGetDeviceImageSparseMemoryRequirements

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetDeviceImageSparseMemoryRequirements"
  vkGetDeviceImageSparseMemoryRequirementsUnsafe
    :: VkGetDeviceImageSparseMemoryRequirements
##endif

#else

module Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirements where

#endif