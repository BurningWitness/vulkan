{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateImageView where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkImageViewCreateInfo
import Vulkan.Types.VkFun



type VkCreateImageView =
          VkDevice -- ^ device
       -> Ptr VkImageViewCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkImageView -- ^ pView
       -> IO VkResult

vkFunCreateImageView :: VkFun VkCreateImageView
vkFunCreateImageView = VkFun (Ptr ("vkCreateImageView\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateImageView"
  vkCreateImageView
    :: VkCreateImageView

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateImageView"
  vkCreateImageViewUnsafe
    :: VkCreateImageView