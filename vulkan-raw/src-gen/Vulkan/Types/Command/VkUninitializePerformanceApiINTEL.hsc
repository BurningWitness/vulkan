{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Types.Command.VkUninitializePerformanceApiINTEL where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkUninitializePerformanceApiINTEL =
          VkDevice -- ^ device
       -> IO ()

vkFunUninitializePerformanceApiINTEL :: VkFun VkUninitializePerformanceApiINTEL
vkFunUninitializePerformanceApiINTEL = VkFun (Ptr ("vkUninitializePerformanceApiINTEL\0"##))

#else

module Vulkan.Types.Command.VkUninitializePerformanceApiINTEL where

#endif