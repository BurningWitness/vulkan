{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_tile_properties

module Vulkan.Types.Command.VkGetDynamicRenderingTilePropertiesQCOM where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderingInfo
import Vulkan.Types.Struct.VkTilePropertiesQCOM
import Vulkan.Types.VkFun



type VkGetDynamicRenderingTilePropertiesQCOM =
          VkDevice -- ^ device
       -> Ptr VkRenderingInfo -- ^ pRenderingInfo
       -> Ptr VkTilePropertiesQCOM -- ^ pProperties
       -> IO VkResult

vkFunGetDynamicRenderingTilePropertiesQCOM :: VkFun VkGetDynamicRenderingTilePropertiesQCOM
vkFunGetDynamicRenderingTilePropertiesQCOM = VkFun (Ptr ("vkGetDynamicRenderingTilePropertiesQCOM\0"##))

#else

module Vulkan.Types.Command.VkGetDynamicRenderingTilePropertiesQCOM where

#endif