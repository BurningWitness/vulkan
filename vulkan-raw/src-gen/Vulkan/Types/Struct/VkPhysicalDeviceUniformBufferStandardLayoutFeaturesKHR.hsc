{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_uniform_buffer_standard_layout

module Vulkan.Types.Struct.VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR" #-} VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR =
       VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , uniformBufferStandardLayout :: VkBool32
         }

instance Storable VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformBufferStandardLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"uniformBufferStandardLayout" ptr val

instance Offset "sType" VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR, pNext}

instance Offset "uniformBufferStandardLayout" VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR, uniformBufferStandardLayout}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR where

#endif