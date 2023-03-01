{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Command.VkCmdSetFragmentShadingRateKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFragmentShadingRateCombinerOpKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.VkFun



type VkCmdSetFragmentShadingRateKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkExtent2D -- ^ pFragmentSize
       -> VkFragmentShadingRateCombinerOpKHR -- ^ combinerOps
       -> IO ()

vkFunCmdSetFragmentShadingRateKHR :: VkFun VkCmdSetFragmentShadingRateKHR
vkFunCmdSetFragmentShadingRateKHR = VkFun (Ptr ("vkCmdSetFragmentShadingRateKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdSetFragmentShadingRateKHR where

#endif