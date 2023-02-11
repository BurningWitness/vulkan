{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkCmdSetPerformanceMarkerINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPerformanceMarkerInfoINTEL
import Vulkan.Types.VkFun



type VkCmdSetPerformanceMarkerINTEL =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkPerformanceMarkerInfoINTEL -- ^ pMarkerInfo
       -> IO VkResult

vkFunCmdSetPerformanceMarkerINTEL :: VkFun VkCmdSetPerformanceMarkerINTEL
vkFunCmdSetPerformanceMarkerINTEL = VkFun (Ptr ("vkCmdSetPerformanceMarkerINTEL\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPerformanceMarkerINTEL where

#endif