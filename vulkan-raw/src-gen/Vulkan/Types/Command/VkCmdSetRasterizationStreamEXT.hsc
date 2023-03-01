{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetRasterizationStreamEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetRasterizationStreamEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ rasterizationStream
       -> IO ()

vkFunCmdSetRasterizationStreamEXT :: VkFun VkCmdSetRasterizationStreamEXT
vkFunCmdSetRasterizationStreamEXT = VkFun (Ptr ("vkCmdSetRasterizationStreamEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetRasterizationStreamEXT where

#endif