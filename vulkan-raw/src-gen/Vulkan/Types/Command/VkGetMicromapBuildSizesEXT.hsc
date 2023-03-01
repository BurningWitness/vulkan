{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Command.VkGetMicromapBuildSizesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkAccelerationStructureBuildTypeKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkMicromapBuildInfoEXT
import Vulkan.Types.Struct.VkMicromapBuildSizesInfoEXT
import Vulkan.Types.VkFun



type VkGetMicromapBuildSizesEXT =
          VkDevice -- ^ device
       -> VkAccelerationStructureBuildTypeKHR -- ^ buildType
       -> Ptr VkMicromapBuildInfoEXT -- ^ pBuildInfo
       -> Ptr VkMicromapBuildSizesInfoEXT -- ^ pSizeInfo
       -> IO ()

vkFunGetMicromapBuildSizesEXT :: VkFun VkGetMicromapBuildSizesEXT
vkFunGetMicromapBuildSizesEXT = VkFun (Ptr ("vkGetMicromapBuildSizesEXT\0"##))

#else

module Vulkan.Types.Command.VkGetMicromapBuildSizesEXT where

#endif