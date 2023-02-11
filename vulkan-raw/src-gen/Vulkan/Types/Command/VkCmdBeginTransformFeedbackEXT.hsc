{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Command.VkCmdBeginTransformFeedbackEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBeginTransformFeedbackEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstCounterBuffer
       -> #{type uint32_t} -- ^ counterBufferCount
       -> Ptr VkBuffer -- ^ pCounterBuffers
       -> Ptr VkDeviceSize -- ^ pCounterBufferOffsets
       -> IO ()

vkFunCmdBeginTransformFeedbackEXT :: VkFun VkCmdBeginTransformFeedbackEXT
vkFunCmdBeginTransformFeedbackEXT = VkFun (Ptr ("vkCmdBeginTransformFeedbackEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBeginTransformFeedbackEXT where

#endif