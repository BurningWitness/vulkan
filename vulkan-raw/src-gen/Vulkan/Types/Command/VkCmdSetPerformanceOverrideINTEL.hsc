{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkCmdSetPerformanceOverrideINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPerformanceOverrideInfoINTEL
import Vulkan.Types.VkFun



type VkCmdSetPerformanceOverrideINTEL =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkPerformanceOverrideInfoINTEL -- ^ pOverrideInfo
       -> IO VkResult

vkFunCmdSetPerformanceOverrideINTEL :: VkFun VkCmdSetPerformanceOverrideINTEL
vkFunCmdSetPerformanceOverrideINTEL = VkFun (Ptr ("vkCmdSetPerformanceOverrideINTEL\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPerformanceOverrideINTEL where

#endif