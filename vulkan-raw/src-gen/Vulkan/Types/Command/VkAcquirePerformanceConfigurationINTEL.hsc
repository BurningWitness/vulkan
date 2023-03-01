{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkAcquirePerformanceConfigurationINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPerformanceConfigurationAcquireInfoINTEL
import Vulkan.Types.VkFun



type VkAcquirePerformanceConfigurationINTEL =
          VkDevice -- ^ device
       -> Ptr VkPerformanceConfigurationAcquireInfoINTEL -- ^ pAcquireInfo
       -> Ptr VkPerformanceConfigurationINTEL -- ^ pConfiguration
       -> IO VkResult

vkFunAcquirePerformanceConfigurationINTEL :: VkFun VkAcquirePerformanceConfigurationINTEL
vkFunAcquirePerformanceConfigurationINTEL = VkFun (Ptr ("vkAcquirePerformanceConfigurationINTEL\0"##))

#else

module Vulkan.Types.Command.VkAcquirePerformanceConfigurationINTEL where

#endif