{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_tile_properties

module Vulkan.Types.Command.VkGetFramebufferTilePropertiesQCOM where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkTilePropertiesQCOM
import Vulkan.Types.VkFun



type VkGetFramebufferTilePropertiesQCOM =
          VkDevice -- ^ device
       -> VkFramebuffer -- ^ framebuffer
       -> Ptr #{type uint32_t} -- ^ pPropertiesCount
       -> Ptr VkTilePropertiesQCOM -- ^ pProperties
       -> IO VkResult

vkFunGetFramebufferTilePropertiesQCOM :: VkFun VkGetFramebufferTilePropertiesQCOM
vkFunGetFramebufferTilePropertiesQCOM = VkFun (Ptr ("vkGetFramebufferTilePropertiesQCOM\0"##))

#else

module Vulkan.Types.Command.VkGetFramebufferTilePropertiesQCOM where

#endif