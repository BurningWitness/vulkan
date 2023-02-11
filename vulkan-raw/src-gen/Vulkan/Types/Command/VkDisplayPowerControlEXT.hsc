{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Command.VkDisplayPowerControlEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayPowerInfoEXT
import Vulkan.Types.VkFun



type VkDisplayPowerControlEXT =
          VkDevice -- ^ device
       -> VkDisplayKHR -- ^ display
       -> Ptr VkDisplayPowerInfoEXT -- ^ pDisplayPowerInfo
       -> IO VkResult

vkFunDisplayPowerControlEXT :: VkFun VkDisplayPowerControlEXT
vkFunDisplayPowerControlEXT = VkFun (Ptr ("vkDisplayPowerControlEXT\0"##))

#else

module Vulkan.Types.Command.VkDisplayPowerControlEXT where

#endif