{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_invocation_mask

module Vulkan.Types.Command.VkCmdBindInvocationMaskHUAWEI where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindInvocationMaskHUAWEI =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImageView -- ^ imageView
       -> VkImageLayout -- ^ imageLayout
       -> IO ()

vkFunCmdBindInvocationMaskHUAWEI :: VkFun VkCmdBindInvocationMaskHUAWEI
vkFunCmdBindInvocationMaskHUAWEI = VkFun (Ptr ("vkCmdBindInvocationMaskHUAWEI\0"##))

#else

module Vulkan.Types.Command.VkCmdBindInvocationMaskHUAWEI where

#endif