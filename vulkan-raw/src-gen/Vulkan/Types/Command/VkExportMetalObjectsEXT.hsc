{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Command.VkExportMetalObjectsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExportMetalObjectsInfoEXT
import Vulkan.Types.VkFun



type VkExportMetalObjectsEXT =
          VkDevice -- ^ device
       -> Ptr VkExportMetalObjectsInfoEXT -- ^ pMetalObjectsInfo
       -> IO ()

vkFunExportMetalObjectsEXT :: VkFun VkExportMetalObjectsEXT
vkFunExportMetalObjectsEXT = VkFun (Ptr ("vkExportMetalObjectsEXT\0"##))

#else

module Vulkan.Types.Command.VkExportMetalObjectsEXT where

#endif