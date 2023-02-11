{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetImageSubresourceLayout where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresource
import Vulkan.Types.Struct.VkSubresourceLayout
import Vulkan.Types.VkFun



type VkGetImageSubresourceLayout =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> Ptr VkImageSubresource -- ^ pSubresource
       -> Ptr VkSubresourceLayout -- ^ pLayout
       -> IO ()

vkFunGetImageSubresourceLayout :: VkFun VkGetImageSubresourceLayout
vkFunGetImageSubresourceLayout = VkFun (Ptr ("vkGetImageSubresourceLayout\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetImageSubresourceLayout"
  vkGetImageSubresourceLayout
    :: VkGetImageSubresourceLayout

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetImageSubresourceLayout"
  vkGetImageSubresourceLayoutUnsafe
    :: VkGetImageSubresourceLayout