{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shading_rate_enums

module Vulkan.Types.Command.VkCmdSetFragmentShadingRateEnumNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFragmentShadingRateCombinerOpKHR
import Vulkan.Types.Enum.VkFragmentShadingRateNV
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetFragmentShadingRateEnumNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkFragmentShadingRateNV -- ^ shadingRate
       -> VkFragmentShadingRateCombinerOpKHR -- ^ combinerOps
       -> IO ()

vkFunCmdSetFragmentShadingRateEnumNV :: VkFun VkCmdSetFragmentShadingRateEnumNV
vkFunCmdSetFragmentShadingRateEnumNV = VkFun (Ptr ("vkCmdSetFragmentShadingRateEnumNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetFragmentShadingRateEnumNV where

#endif