{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_subpass_shading

module Vulkan.Types.Command.VkCmdSubpassShadingHUAWEI where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSubpassShadingHUAWEI =
          VkCommandBuffer -- ^ commandBuffer
       -> IO ()

vkFunCmdSubpassShadingHUAWEI :: VkFun VkCmdSubpassShadingHUAWEI
vkFunCmdSubpassShadingHUAWEI = VkFun (Ptr ("vkCmdSubpassShadingHUAWEI\0"##))

#else

module Vulkan.Types.Command.VkCmdSubpassShadingHUAWEI where

#endif