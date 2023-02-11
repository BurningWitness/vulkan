#include <vulkan/vulkan.h>

#if VK_KHR_maintenance1

module Vulkan.Types.Command.VkTrimCommandPoolKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCommandPoolTrimFlags
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkTrimCommandPool
import Vulkan.Types.VkFun



type VkTrimCommandPoolKHR = VkTrimCommandPool

vkFunTrimCommandPoolKHR
  :: VkFun VkTrimCommandPoolKHR
vkFunTrimCommandPoolKHR = vkFunTrimCommandPool


#else

module Vulkan.Types.Command.VkTrimCommandPoolKHR where

#endif