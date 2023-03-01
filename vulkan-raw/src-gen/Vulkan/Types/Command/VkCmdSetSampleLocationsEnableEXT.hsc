{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetSampleLocationsEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetSampleLocationsEnableEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBool32 -- ^ sampleLocationsEnable
       -> IO ()

vkFunCmdSetSampleLocationsEnableEXT :: VkFun VkCmdSetSampleLocationsEnableEXT
vkFunCmdSetSampleLocationsEnableEXT = VkFun (Ptr ("vkCmdSetSampleLocationsEnableEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetSampleLocationsEnableEXT where

#endif