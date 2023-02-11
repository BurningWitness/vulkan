{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkCreateMicromapEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkMicromapCreateInfoEXT
import Vulkan.Types.VkFun



type VkCreateMicromapEXT =
          VkDevice -- ^ device
       -> Ptr VkMicromapCreateInfoEXT -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkMicromapEXT -- ^ pMicromap
       -> IO VkResult

vkFunCreateMicromapEXT :: VkFun VkCreateMicromapEXT
vkFunCreateMicromapEXT = VkFun (Ptr ("vkCreateMicromapEXT\0"##))

#else

module Vulkan.Types.Command.VkCreateMicromapEXT where

#endif