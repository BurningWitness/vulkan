{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkSetPrivateDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkSetPrivateDataEXT =
          VkDevice -- ^ device
       -> VkObjectType -- ^ objectType
       -> #{type uint64_t} -- ^ objectHandle
       -> VkPrivateDataSlot -- ^ privateDataSlot
       -> #{type uint64_t} -- ^ data
       -> IO VkResult

vkFunSetPrivateDataEXT :: VkFun VkSetPrivateDataEXT
vkFunSetPrivateDataEXT = VkFun (Ptr ("vkSetPrivateDataEXT\0"##))

#else

module Vulkan.Types.Command.VkSetPrivateDataEXT where

#endif