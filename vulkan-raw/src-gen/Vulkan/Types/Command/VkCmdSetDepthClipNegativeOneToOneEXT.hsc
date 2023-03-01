{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetDepthClipNegativeOneToOneEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDepthClipNegativeOneToOneEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ negativeOneToOne
       -> IO ()

vkFunCmdSetDepthClipNegativeOneToOneEXT :: VkFun VkCmdSetDepthClipNegativeOneToOneEXT
vkFunCmdSetDepthClipNegativeOneToOneEXT = VkFun (Ptr ("vkCmdSetDepthClipNegativeOneToOneEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDepthClipNegativeOneToOneEXT where

#endif