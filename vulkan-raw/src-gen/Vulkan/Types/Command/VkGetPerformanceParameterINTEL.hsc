{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkGetPerformanceParameterINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPerformanceParameterTypeINTEL
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPerformanceValueINTEL
import Vulkan.Types.VkFun



type VkGetPerformanceParameterINTEL =
          VkDevice -- ^ device
       -> VkPerformanceParameterTypeINTEL -- ^ parameter
       -> Ptr VkPerformanceValueINTEL -- ^ pValue
       -> IO VkResult

vkFunGetPerformanceParameterINTEL :: VkFun VkGetPerformanceParameterINTEL
vkFunGetPerformanceParameterINTEL = VkFun (Ptr ("vkGetPerformanceParameterINTEL\0"##))

#else

module Vulkan.Types.Command.VkGetPerformanceParameterINTEL where

#endif