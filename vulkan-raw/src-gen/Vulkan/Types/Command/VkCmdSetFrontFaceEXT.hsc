#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetFrontFaceEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFrontFace
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetFrontFace
import Vulkan.Types.VkFun



type VkCmdSetFrontFaceEXT = VkCmdSetFrontFace

vkFunCmdSetFrontFaceEXT
  :: VkFun VkCmdSetFrontFaceEXT
vkFunCmdSetFrontFaceEXT = vkFunCmdSetFrontFace


#else

module Vulkan.Types.Command.VkCmdSetFrontFaceEXT where

#endif