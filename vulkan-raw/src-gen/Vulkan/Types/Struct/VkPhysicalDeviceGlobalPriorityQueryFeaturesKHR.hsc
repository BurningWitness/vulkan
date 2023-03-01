{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_global_priority

module Vulkan.Types.Struct.VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR" #-} VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR =
       VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , globalPriorityQuery :: VkBool32
         }

instance Storable VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"globalPriorityQuery" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"globalPriorityQuery" ptr val

instance Offset "sType" VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR, pNext}

instance Offset "globalPriorityQuery" VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR, globalPriorityQuery}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR where

#endif