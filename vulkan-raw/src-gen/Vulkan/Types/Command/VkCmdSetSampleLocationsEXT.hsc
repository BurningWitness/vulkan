{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_sample_locations

module Vulkan.Types.Command.VkCmdSetSampleLocationsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSampleLocationsInfoEXT
import Vulkan.Types.VkFun



type VkCmdSetSampleLocationsEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkSampleLocationsInfoEXT -- ^ pSampleLocationsInfo
       -> IO ()

vkFunCmdSetSampleLocationsEXT :: VkFun VkCmdSetSampleLocationsEXT
vkFunCmdSetSampleLocationsEXT = VkFun (Ptr ("vkCmdSetSampleLocationsEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetSampleLocationsEXT where

#endif