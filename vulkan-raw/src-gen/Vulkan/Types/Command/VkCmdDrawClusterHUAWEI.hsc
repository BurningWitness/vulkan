{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_cluster_culling_shader

module Vulkan.Types.Command.VkCmdDrawClusterHUAWEI where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawClusterHUAWEI =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ groupCountX
       -> #{type uint32_t} -- ^ groupCountY
       -> #{type uint32_t} -- ^ groupCountZ
       -> IO ()

vkFunCmdDrawClusterHUAWEI :: VkFun VkCmdDrawClusterHUAWEI
vkFunCmdDrawClusterHUAWEI = VkFun (Ptr ("vkCmdDrawClusterHUAWEI\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawClusterHUAWEI where

#endif