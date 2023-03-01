{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Command.VkCompileDeferredNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCompileDeferredNV =
          VkDevice -- ^ device
       -> VkPipeline -- ^ pipeline
       -> #{type uint32_t} -- ^ shader
       -> IO VkResult

vkFunCompileDeferredNV :: VkFun VkCompileDeferredNV
vkFunCompileDeferredNV = VkFun (Ptr ("vkCompileDeferredNV\0"##))

#else

module Vulkan.Types.Command.VkCompileDeferredNV where

#endif