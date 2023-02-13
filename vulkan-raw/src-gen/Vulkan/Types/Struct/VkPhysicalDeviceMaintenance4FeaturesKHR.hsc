{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4FeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMaintenance4FeaturesKHR" #-} VkPhysicalDeviceMaintenance4FeaturesKHR =
       VkPhysicalDeviceMaintenance4FeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maintenance4 :: VkBool32
         }

instance Storable VkPhysicalDeviceMaintenance4FeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceMaintenance4FeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceMaintenance4FeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceMaintenance4FeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maintenance4" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maintenance4" ptr val

instance Offset "sType" VkPhysicalDeviceMaintenance4FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4FeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceMaintenance4FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4FeaturesKHR, pNext}

instance Offset "maintenance4" VkPhysicalDeviceMaintenance4FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceMaintenance4FeaturesKHR, maintenance4}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMaintenance4FeaturesKHR where

#endif