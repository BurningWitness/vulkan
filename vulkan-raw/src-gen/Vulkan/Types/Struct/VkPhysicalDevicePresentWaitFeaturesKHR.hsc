{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_present_wait

module Vulkan.Types.Struct.VkPhysicalDevicePresentWaitFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePresentWaitFeaturesKHR" #-} VkPhysicalDevicePresentWaitFeaturesKHR =
       VkPhysicalDevicePresentWaitFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentWait :: VkBool32 -- ^ vkWaitForPresentKHR is supported
         }

instance Storable VkPhysicalDevicePresentWaitFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDevicePresentWaitFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDevicePresentWaitFeaturesKHR}

  peek ptr = 
    VkPhysicalDevicePresentWaitFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentWait" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentWait" ptr val

instance Offset "sType" VkPhysicalDevicePresentWaitFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePresentWaitFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePresentWaitFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePresentWaitFeaturesKHR, pNext}

instance Offset "presentWait" VkPhysicalDevicePresentWaitFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevicePresentWaitFeaturesKHR, presentWait}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePresentWaitFeaturesKHR where

#endif