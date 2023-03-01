{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateFramebuffer where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkFramebufferCreateInfo
import Vulkan.Types.VkFun



type VkCreateFramebuffer =
          VkDevice -- ^ device
       -> Ptr VkFramebufferCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkFramebuffer -- ^ pFramebuffer
       -> IO VkResult

vkFunCreateFramebuffer :: VkFun VkCreateFramebuffer
vkFunCreateFramebuffer = VkFun (Ptr ("vkCreateFramebuffer\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateFramebuffer"
  vkCreateFramebuffer
    :: VkCreateFramebuffer

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateFramebuffer"
  vkCreateFramebufferUnsafe
    :: VkCreateFramebuffer