{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetRenderAreaGranularity where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.VkFun



type VkGetRenderAreaGranularity =
          VkDevice -- ^ device
       -> VkRenderPass -- ^ renderPass
       -> Ptr VkExtent2D -- ^ pGranularity
       -> IO ()

vkFunGetRenderAreaGranularity :: VkFun VkGetRenderAreaGranularity
vkFunGetRenderAreaGranularity = VkFun (Ptr ("vkGetRenderAreaGranularity\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetRenderAreaGranularity"
  vkGetRenderAreaGranularity
    :: VkGetRenderAreaGranularity

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetRenderAreaGranularity"
  vkGetRenderAreaGranularityUnsafe
    :: VkGetRenderAreaGranularity