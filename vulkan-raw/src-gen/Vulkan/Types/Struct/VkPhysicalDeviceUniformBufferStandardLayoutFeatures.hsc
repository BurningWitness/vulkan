{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceUniformBufferStandardLayoutFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceUniformBufferStandardLayoutFeatures" #-} VkPhysicalDeviceUniformBufferStandardLayoutFeatures =
       VkPhysicalDeviceUniformBufferStandardLayoutFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , uniformBufferStandardLayout :: VkBool32
         }

instance Storable VkPhysicalDeviceUniformBufferStandardLayoutFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceUniformBufferStandardLayoutFeatures}
  alignment _ = #{alignment VkPhysicalDeviceUniformBufferStandardLayoutFeatures}

  peek ptr = 
    VkPhysicalDeviceUniformBufferStandardLayoutFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"uniformBufferStandardLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"uniformBufferStandardLayout" ptr val

instance Offset "sType" VkPhysicalDeviceUniformBufferStandardLayoutFeatures where
  rawOffset = #{offset VkPhysicalDeviceUniformBufferStandardLayoutFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceUniformBufferStandardLayoutFeatures where
  rawOffset = #{offset VkPhysicalDeviceUniformBufferStandardLayoutFeatures, pNext}

instance Offset "uniformBufferStandardLayout" VkPhysicalDeviceUniformBufferStandardLayoutFeatures where
  rawOffset = #{offset VkPhysicalDeviceUniformBufferStandardLayoutFeatures, uniformBufferStandardLayout}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceUniformBufferStandardLayoutFeatures where

#endif