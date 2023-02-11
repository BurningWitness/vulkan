{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetSampleMaskEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetSampleMaskEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkSampleCountFlagBits -- ^ samples
       -> Ptr VkSampleMask -- ^ pSampleMask
       -> IO ()

vkFunCmdSetSampleMaskEXT :: VkFun VkCmdSetSampleMaskEXT
vkFunCmdSetSampleMaskEXT = VkFun (Ptr ("vkCmdSetSampleMaskEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetSampleMaskEXT where

#endif