{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_global_priority_query

module Vulkan.Types.Struct.VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT" #-} VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT =
       VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , globalPriorityQuery :: VkBool32
         }

instance Storable VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"globalPriorityQuery" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"globalPriorityQuery" ptr val

instance Offset "sType" VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT, pNext}

instance Offset "globalPriorityQuery" VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT, globalPriorityQuery}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT where

#endif