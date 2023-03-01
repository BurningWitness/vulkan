{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_shading_rate_image

module Vulkan.Types.Command.VkCmdSetViewportShadingRatePaletteNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkShadingRatePaletteNV
import Vulkan.Types.VkFun



type VkCmdSetViewportShadingRatePaletteNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstViewport
       -> #{type uint32_t} -- ^ viewportCount
       -> Ptr VkShadingRatePaletteNV -- ^ pShadingRatePalettes
       -> IO ()

vkFunCmdSetViewportShadingRatePaletteNV :: VkFun VkCmdSetViewportShadingRatePaletteNV
vkFunCmdSetViewportShadingRatePaletteNV = VkFun (Ptr ("vkCmdSetViewportShadingRatePaletteNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetViewportShadingRatePaletteNV where

#endif