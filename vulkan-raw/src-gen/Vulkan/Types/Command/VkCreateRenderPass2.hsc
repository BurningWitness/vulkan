{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Command.VkCreateRenderPass2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkRenderPassCreateInfo2
import Vulkan.Types.VkFun



type VkCreateRenderPass2 =
          VkDevice -- ^ device
       -> Ptr VkRenderPassCreateInfo2 -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkRenderPass -- ^ pRenderPass
       -> IO VkResult

vkFunCreateRenderPass2 :: VkFun VkCreateRenderPass2
vkFunCreateRenderPass2 = VkFun (Ptr ("vkCreateRenderPass2\0"##))

##if CORE_1_2
foreign import CALLCV "vulkan/vulkan.h vkCreateRenderPass2"
  vkCreateRenderPass2
    :: VkCreateRenderPass2

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateRenderPass2"
  vkCreateRenderPass2Unsafe
    :: VkCreateRenderPass2
##endif

#else

module Vulkan.Types.Command.VkCreateRenderPass2 where

#endif