{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Command.VkCmdBindTransformFeedbackBuffersEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindTransformFeedbackBuffersEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstBinding
       -> #{type uint32_t} -- ^ bindingCount
       -> Ptr VkBuffer -- ^ pBuffers
       -> Ptr VkDeviceSize -- ^ pOffsets
       -> Ptr VkDeviceSize -- ^ pSizes
       -> IO ()

vkFunCmdBindTransformFeedbackBuffersEXT :: VkFun VkCmdBindTransformFeedbackBuffersEXT
vkFunCmdBindTransformFeedbackBuffersEXT = VkFun (Ptr ("vkCmdBindTransformFeedbackBuffersEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBindTransformFeedbackBuffersEXT where

#endif