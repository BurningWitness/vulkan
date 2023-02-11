{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Command.VkCmdBindShadingRateImageNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindShadingRateImageNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkImageView -- ^ imageView
       -> VkImageLayout -- ^ imageLayout
       -> IO ()

vkFunCmdBindShadingRateImageNV :: VkFun VkCmdBindShadingRateImageNV
vkFunCmdBindShadingRateImageNV = VkFun (Ptr ("vkCmdBindShadingRateImageNV\0"##))

#else

module Vulkan.Types.Command.VkCmdBindShadingRateImageNV where

#endif