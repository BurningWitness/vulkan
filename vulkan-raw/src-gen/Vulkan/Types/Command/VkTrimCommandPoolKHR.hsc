{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance1

module Vulkan.Types.Command.VkTrimCommandPoolKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCommandPoolTrimFlags
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkTrimCommandPoolKHR =
          VkDevice -- ^ device
       -> VkCommandPool -- ^ commandPool
       -> VkCommandPoolTrimFlags -- ^ flags
       -> IO ()

vkFunTrimCommandPoolKHR :: VkFun VkTrimCommandPoolKHR
vkFunTrimCommandPoolKHR = VkFun (Ptr ("vkTrimCommandPoolKHR\0"##))

#else

module Vulkan.Types.Command.VkTrimCommandPoolKHR where

#endif