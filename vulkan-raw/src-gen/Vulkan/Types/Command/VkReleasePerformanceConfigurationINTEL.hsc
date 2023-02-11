{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkReleasePerformanceConfigurationINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkReleasePerformanceConfigurationINTEL =
          VkDevice -- ^ device
       -> VkPerformanceConfigurationINTEL -- ^ configuration
       -> IO VkResult

vkFunReleasePerformanceConfigurationINTEL :: VkFun VkReleasePerformanceConfigurationINTEL
vkFunReleasePerformanceConfigurationINTEL = VkFun (Ptr ("vkReleasePerformanceConfigurationINTEL\0"##))

#else

module Vulkan.Types.Command.VkReleasePerformanceConfigurationINTEL where

#endif