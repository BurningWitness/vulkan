{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateImage where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkImageCreateInfo
import Vulkan.Types.VkFun



type VkCreateImage =
          VkDevice -- ^ device
       -> Ptr VkImageCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkImage -- ^ pImage
       -> IO VkResult

vkFunCreateImage :: VkFun VkCreateImage
vkFunCreateImage = VkFun (Ptr ("vkCreateImage\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateImage"
  vkCreateImage
    :: VkCreateImage

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateImage"
  vkCreateImageUnsafe
    :: VkCreateImage