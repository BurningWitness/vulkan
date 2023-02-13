{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkPhysicalDeviceSynchronization2FeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSynchronization2FeaturesKHR" #-} VkPhysicalDeviceSynchronization2FeaturesKHR =
       VkPhysicalDeviceSynchronization2FeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , synchronization2 :: VkBool32
         }

instance Storable VkPhysicalDeviceSynchronization2FeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceSynchronization2FeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceSynchronization2FeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceSynchronization2FeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"synchronization2" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"synchronization2" ptr val

instance Offset "sType" VkPhysicalDeviceSynchronization2FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSynchronization2FeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceSynchronization2FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSynchronization2FeaturesKHR, pNext}

instance Offset "synchronization2" VkPhysicalDeviceSynchronization2FeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSynchronization2FeaturesKHR, synchronization2}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSynchronization2FeaturesKHR where

#endif