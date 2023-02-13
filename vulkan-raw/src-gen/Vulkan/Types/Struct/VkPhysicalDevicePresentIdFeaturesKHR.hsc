{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_present_id

module Vulkan.Types.Struct.VkPhysicalDevicePresentIdFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePresentIdFeaturesKHR" #-} VkPhysicalDevicePresentIdFeaturesKHR =
       VkPhysicalDevicePresentIdFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentId :: VkBool32 -- ^ Present ID in VkPresentInfoKHR
         }

instance Storable VkPhysicalDevicePresentIdFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDevicePresentIdFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDevicePresentIdFeaturesKHR}

  peek ptr = 
    VkPhysicalDevicePresentIdFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"presentId" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentId" ptr val

instance Offset "sType" VkPhysicalDevicePresentIdFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePresentIdFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePresentIdFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePresentIdFeaturesKHR, pNext}

instance Offset "presentId" VkPhysicalDevicePresentIdFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePresentIdFeaturesKHR, presentId}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePresentIdFeaturesKHR where

#endif