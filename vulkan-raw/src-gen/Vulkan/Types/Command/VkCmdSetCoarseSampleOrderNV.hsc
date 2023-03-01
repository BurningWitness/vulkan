{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Command.VkCmdSetCoarseSampleOrderNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCoarseSampleOrderTypeNV
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCoarseSampleOrderCustomNV
import Vulkan.Types.VkFun



type VkCmdSetCoarseSampleOrderNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkCoarseSampleOrderTypeNV -- ^ sampleOrderType
       -> #{type uint32_t} -- ^ customSampleOrderCount
       -> Ptr VkCoarseSampleOrderCustomNV -- ^ pCustomSampleOrders
       -> IO ()

vkFunCmdSetCoarseSampleOrderNV :: VkFun VkCmdSetCoarseSampleOrderNV
vkFunCmdSetCoarseSampleOrderNV = VkFun (Ptr ("vkCmdSetCoarseSampleOrderNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetCoarseSampleOrderNV where

#endif