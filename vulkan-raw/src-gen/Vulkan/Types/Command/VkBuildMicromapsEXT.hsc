{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkBuildMicromapsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMicromapBuildInfoEXT
import Vulkan.Types.VkFun



type VkBuildMicromapsEXT =
          VkDevice -- ^ device
       -> VkDeferredOperationKHR -- ^ deferredOperation
       -> #{type uint32_t} -- ^ infoCount
       -> Ptr VkMicromapBuildInfoEXT -- ^ pInfos
       -> IO VkResult

vkFunBuildMicromapsEXT :: VkFun VkBuildMicromapsEXT
vkFunBuildMicromapsEXT = VkFun (Ptr ("vkBuildMicromapsEXT\0"##))

#else

module Vulkan.Types.Command.VkBuildMicromapsEXT where

#endif