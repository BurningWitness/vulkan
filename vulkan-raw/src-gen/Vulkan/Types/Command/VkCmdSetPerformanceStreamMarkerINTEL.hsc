{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkCmdSetPerformanceStreamMarkerINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPerformanceStreamMarkerInfoINTEL
import Vulkan.Types.VkFun



type VkCmdSetPerformanceStreamMarkerINTEL =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkPerformanceStreamMarkerInfoINTEL -- ^ pMarkerInfo
       -> IO VkResult

vkFunCmdSetPerformanceStreamMarkerINTEL :: VkFun VkCmdSetPerformanceStreamMarkerINTEL
vkFunCmdSetPerformanceStreamMarkerINTEL = VkFun (Ptr ("vkCmdSetPerformanceStreamMarkerINTEL\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPerformanceStreamMarkerINTEL where

#endif