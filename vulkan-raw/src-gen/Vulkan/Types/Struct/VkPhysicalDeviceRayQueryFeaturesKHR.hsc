{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_query

module Vulkan.Types.Struct.VkPhysicalDeviceRayQueryFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRayQueryFeaturesKHR" #-} VkPhysicalDeviceRayQueryFeaturesKHR =
       VkPhysicalDeviceRayQueryFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rayQuery :: VkBool32
         }

instance Storable VkPhysicalDeviceRayQueryFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceRayQueryFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceRayQueryFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceRayQueryFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"rayQuery" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rayQuery" ptr val

instance Offset "sType" VkPhysicalDeviceRayQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayQueryFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceRayQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayQueryFeaturesKHR, pNext}

instance Offset "rayQuery" VkPhysicalDeviceRayQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceRayQueryFeaturesKHR, rayQuery}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRayQueryFeaturesKHR where

#endif