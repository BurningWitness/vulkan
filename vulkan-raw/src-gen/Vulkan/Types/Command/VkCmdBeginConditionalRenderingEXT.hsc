{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conditional_rendering

module Vulkan.Types.Command.VkCmdBeginConditionalRenderingEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkConditionalRenderingBeginInfoEXT
import Vulkan.Types.VkFun



type VkCmdBeginConditionalRenderingEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkConditionalRenderingBeginInfoEXT -- ^ pConditionalRenderingBegin
       -> IO ()

vkFunCmdBeginConditionalRenderingEXT :: VkFun VkCmdBeginConditionalRenderingEXT
vkFunCmdBeginConditionalRenderingEXT = VkFun (Ptr ("vkCmdBeginConditionalRenderingEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBeginConditionalRenderingEXT where

#endif