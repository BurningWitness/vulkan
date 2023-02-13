{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkGetPrivateDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPrivateDataEXT =
          VkDevice -- ^ device
       -> VkObjectType -- ^ objectType
       -> #{type uint64_t} -- ^ objectHandle
       -> VkPrivateDataSlot -- ^ privateDataSlot
       -> Ptr #{type uint64_t} -- ^ pData
       -> IO ()

vkFunGetPrivateDataEXT :: VkFun VkGetPrivateDataEXT
vkFunGetPrivateDataEXT = VkFun (Ptr ("vkGetPrivateDataEXT\0"##))

#else

module Vulkan.Types.Command.VkGetPrivateDataEXT where

#endif