{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateRenderPass where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkRenderPassCreateInfo
import Vulkan.Types.VkFun



type VkCreateRenderPass =
          VkDevice -- ^ device
       -> Ptr VkRenderPassCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkRenderPass -- ^ pRenderPass
       -> IO VkResult

vkFunCreateRenderPass :: VkFun VkCreateRenderPass
vkFunCreateRenderPass = VkFun (Ptr ("vkCreateRenderPass\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateRenderPass"
  vkCreateRenderPass
    :: VkCreateRenderPass

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateRenderPass"
  vkCreateRenderPassUnsafe
    :: VkCreateRenderPass