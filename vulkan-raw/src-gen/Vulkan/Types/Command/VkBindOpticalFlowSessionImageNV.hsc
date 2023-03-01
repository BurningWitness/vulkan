{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Command.VkBindOpticalFlowSessionImageNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkOpticalFlowSessionBindingPointNV
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkBindOpticalFlowSessionImageNV =
          VkDevice -- ^ device
       -> VkOpticalFlowSessionNV -- ^ session
       -> VkOpticalFlowSessionBindingPointNV -- ^ bindingPoint
       -> VkImageView -- ^ view
       -> VkImageLayout -- ^ layout
       -> IO VkResult

vkFunBindOpticalFlowSessionImageNV :: VkFun VkBindOpticalFlowSessionImageNV
vkFunBindOpticalFlowSessionImageNV = VkFun (Ptr ("vkBindOpticalFlowSessionImageNV\0"##))

#else

module Vulkan.Types.Command.VkBindOpticalFlowSessionImageNV where

#endif