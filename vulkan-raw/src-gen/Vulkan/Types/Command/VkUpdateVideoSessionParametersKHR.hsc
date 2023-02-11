{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Command.VkUpdateVideoSessionParametersKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoSessionParametersUpdateInfoKHR
import Vulkan.Types.VkFun



type VkUpdateVideoSessionParametersKHR =
          VkDevice -- ^ device
       -> VkVideoSessionParametersKHR -- ^ videoSessionParameters
       -> Ptr VkVideoSessionParametersUpdateInfoKHR -- ^ pUpdateInfo
       -> IO VkResult

vkFunUpdateVideoSessionParametersKHR :: VkFun VkUpdateVideoSessionParametersKHR
vkFunUpdateVideoSessionParametersKHR = VkFun (Ptr ("vkUpdateVideoSessionParametersKHR\0"##))

#else

module Vulkan.Types.Command.VkUpdateVideoSessionParametersKHR where

#endif