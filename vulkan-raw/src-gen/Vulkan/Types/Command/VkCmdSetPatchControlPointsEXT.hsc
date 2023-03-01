{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetPatchControlPointsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetPatchControlPointsEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ patchControlPoints
       -> IO ()

vkFunCmdSetPatchControlPointsEXT :: VkFun VkCmdSetPatchControlPointsEXT
vkFunCmdSetPatchControlPointsEXT = VkFun (Ptr ("vkCmdSetPatchControlPointsEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetPatchControlPointsEXT where

#endif