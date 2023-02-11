{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetImageMemoryRequirements where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMemoryRequirements
import Vulkan.Types.VkFun



type VkGetImageMemoryRequirements =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> Ptr VkMemoryRequirements -- ^ pMemoryRequirements
       -> IO ()

vkFunGetImageMemoryRequirements :: VkFun VkGetImageMemoryRequirements
vkFunGetImageMemoryRequirements = VkFun (Ptr ("vkGetImageMemoryRequirements\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetImageMemoryRequirements"
  vkGetImageMemoryRequirements
    :: VkGetImageMemoryRequirements

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetImageMemoryRequirements"
  vkGetImageMemoryRequirementsUnsafe
    :: VkGetImageMemoryRequirements