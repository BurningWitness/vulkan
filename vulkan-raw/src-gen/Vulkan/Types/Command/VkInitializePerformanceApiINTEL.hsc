{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkInitializePerformanceApiINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkInitializePerformanceApiInfoINTEL
import Vulkan.Types.VkFun



type VkInitializePerformanceApiINTEL =
          VkDevice -- ^ device
       -> Ptr VkInitializePerformanceApiInfoINTEL -- ^ pInitializeInfo
       -> IO VkResult

vkFunInitializePerformanceApiINTEL :: VkFun VkInitializePerformanceApiINTEL
vkFunInitializePerformanceApiINTEL = VkFun (Ptr ("vkInitializePerformanceApiINTEL\0"##))

#else

module Vulkan.Types.Command.VkInitializePerformanceApiINTEL where

#endif