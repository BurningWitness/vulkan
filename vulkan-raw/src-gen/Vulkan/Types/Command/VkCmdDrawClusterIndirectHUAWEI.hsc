{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_cluster_culling_shader

module Vulkan.Types.Command.VkCmdDrawClusterIndirectHUAWEI where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawClusterIndirectHUAWEI =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> IO ()

vkFunCmdDrawClusterIndirectHUAWEI :: VkFun VkCmdDrawClusterIndirectHUAWEI
vkFunCmdDrawClusterIndirectHUAWEI = VkFun (Ptr ("vkCmdDrawClusterIndirectHUAWEI\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawClusterIndirectHUAWEI where

#endif