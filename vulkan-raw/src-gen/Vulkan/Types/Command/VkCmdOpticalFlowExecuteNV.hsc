{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Command.VkCmdOpticalFlowExecuteNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkOpticalFlowExecuteInfoNV
import Vulkan.Types.VkFun



type VkCmdOpticalFlowExecuteNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkOpticalFlowSessionNV -- ^ session
       -> Ptr VkOpticalFlowExecuteInfoNV -- ^ pExecuteInfo
       -> IO ()

vkFunCmdOpticalFlowExecuteNV :: VkFun VkCmdOpticalFlowExecuteNV
vkFunCmdOpticalFlowExecuteNV = VkFun (Ptr ("vkCmdOpticalFlowExecuteNV\0"##))

#else

module Vulkan.Types.Command.VkCmdOpticalFlowExecuteNV where

#endif