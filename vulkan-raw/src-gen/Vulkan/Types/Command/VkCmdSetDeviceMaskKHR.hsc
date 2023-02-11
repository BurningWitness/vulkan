#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Command.VkCmdSetDeviceMaskKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetDeviceMask
import Vulkan.Types.VkFun



type VkCmdSetDeviceMaskKHR = VkCmdSetDeviceMask

vkFunCmdSetDeviceMaskKHR
  :: VkFun VkCmdSetDeviceMaskKHR
vkFunCmdSetDeviceMaskKHR = vkFunCmdSetDeviceMask


#else

module Vulkan.Types.Command.VkCmdSetDeviceMaskKHR where

#endif