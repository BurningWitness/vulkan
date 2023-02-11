{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceDynamicRenderingFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDynamicRenderingFeatures" #-} VkPhysicalDeviceDynamicRenderingFeatures =
       VkPhysicalDeviceDynamicRenderingFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , dynamicRendering :: VkBool32
         }

instance Storable VkPhysicalDeviceDynamicRenderingFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDynamicRenderingFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceDynamicRenderingFeatures}

  peek ptr = 
    VkPhysicalDeviceDynamicRenderingFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"dynamicRendering" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"dynamicRendering" ptr val

instance Offset "sType" VkPhysicalDeviceDynamicRenderingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDynamicRenderingFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceDynamicRenderingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDynamicRenderingFeatures, pNext}

instance Offset "dynamicRendering" VkPhysicalDeviceDynamicRenderingFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceDynamicRenderingFeatures, dynamicRendering}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDynamicRenderingFeatures where

#endif