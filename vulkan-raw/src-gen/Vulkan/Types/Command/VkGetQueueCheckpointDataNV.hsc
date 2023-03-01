{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Command.VkGetQueueCheckpointDataNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCheckpointDataNV
import Vulkan.Types.VkFun



type VkGetQueueCheckpointDataNV =
          VkQueue -- ^ queue
       -> Ptr #{type uint32_t} -- ^ pCheckpointDataCount
       -> Ptr VkCheckpointDataNV -- ^ pCheckpointData
       -> IO ()

vkFunGetQueueCheckpointDataNV :: VkFun VkGetQueueCheckpointDataNV
vkFunGetQueueCheckpointDataNV = VkFun (Ptr ("vkGetQueueCheckpointDataNV\0"##))

#else

module Vulkan.Types.Command.VkGetQueueCheckpointDataNV where

#endif