{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetQueryPoolResults where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkQueryResultFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetQueryPoolResults =
          VkDevice -- ^ device
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ firstQuery
       -> #{type uint32_t} -- ^ queryCount
       -> #{type size_t} -- ^ dataSize
       -> Ptr () -- ^ pData
       -> VkDeviceSize -- ^ stride
       -> VkQueryResultFlags -- ^ flags
       -> IO VkResult

vkFunGetQueryPoolResults :: VkFun VkGetQueryPoolResults
vkFunGetQueryPoolResults = VkFun (Ptr ("vkGetQueryPoolResults\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetQueryPoolResults"
  vkGetQueryPoolResults
    :: VkGetQueryPoolResults

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetQueryPoolResults"
  vkGetQueryPoolResultsUnsafe
    :: VkGetQueryPoolResults