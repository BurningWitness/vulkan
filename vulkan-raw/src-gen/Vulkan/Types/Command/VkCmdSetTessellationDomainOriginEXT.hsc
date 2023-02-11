{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Command.VkCmdSetTessellationDomainOriginEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkTessellationDomainOrigin
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetTessellationDomainOriginEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkTessellationDomainOrigin -- ^ domainOrigin
       -> IO ()

vkFunCmdSetTessellationDomainOriginEXT :: VkFun VkCmdSetTessellationDomainOriginEXT
vkFunCmdSetTessellationDomainOriginEXT = VkFun (Ptr ("vkCmdSetTessellationDomainOriginEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetTessellationDomainOriginEXT where

#endif