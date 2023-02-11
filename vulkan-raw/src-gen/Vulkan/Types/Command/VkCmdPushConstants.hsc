{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdPushConstants where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdPushConstants =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineLayout -- ^ layout
       -> VkShaderStageFlags -- ^ stageFlags
       -> #{type uint32_t} -- ^ offset
       -> #{type uint32_t} -- ^ size
       -> Ptr () -- ^ pValues
       -> IO ()

vkFunCmdPushConstants :: VkFun VkCmdPushConstants
vkFunCmdPushConstants = VkFun (Ptr ("vkCmdPushConstants\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdPushConstants"
  vkCmdPushConstants
    :: VkCmdPushConstants

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdPushConstants"
  vkCmdPushConstantsUnsafe
    :: VkCmdPushConstants