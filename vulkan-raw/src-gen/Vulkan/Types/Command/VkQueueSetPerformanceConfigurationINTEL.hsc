{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkQueueSetPerformanceConfigurationINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkQueueSetPerformanceConfigurationINTEL =
          VkQueue -- ^ queue
       -> VkPerformanceConfigurationINTEL -- ^ configuration
       -> IO VkResult

vkFunQueueSetPerformanceConfigurationINTEL :: VkFun VkQueueSetPerformanceConfigurationINTEL
vkFunQueueSetPerformanceConfigurationINTEL = VkFun (Ptr ("vkQueueSetPerformanceConfigurationINTEL\0"##))

#else

module Vulkan.Types.Command.VkQueueSetPerformanceConfigurationINTEL where

#endif