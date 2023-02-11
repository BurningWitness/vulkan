{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2 && VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Command.VkGetQueueCheckpointData2NV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCheckpointData2NV
import Vulkan.Types.VkFun



type VkGetQueueCheckpointData2NV =
          VkQueue -- ^ queue
       -> Ptr #{type uint32_t} -- ^ pCheckpointDataCount
       -> Ptr VkCheckpointData2NV -- ^ pCheckpointData
       -> IO ()

vkFunGetQueueCheckpointData2NV :: VkFun VkGetQueueCheckpointData2NV
vkFunGetQueueCheckpointData2NV = VkFun (Ptr ("vkGetQueueCheckpointData2NV\0"##))

#else

module Vulkan.Types.Command.VkGetQueueCheckpointData2NV where

#endif