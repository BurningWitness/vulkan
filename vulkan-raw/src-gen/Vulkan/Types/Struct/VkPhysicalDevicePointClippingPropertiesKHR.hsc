{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_maintenance2

module Vulkan.Types.Struct.VkPhysicalDevicePointClippingPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPointClippingBehavior
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePointClippingPropertiesKHR" #-} VkPhysicalDevicePointClippingPropertiesKHR =
       VkPhysicalDevicePointClippingPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pointClippingBehavior :: VkPointClippingBehavior
         }

instance Storable VkPhysicalDevicePointClippingPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDevicePointClippingPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDevicePointClippingPropertiesKHR}

  peek ptr = 
    VkPhysicalDevicePointClippingPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pointClippingBehavior" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pointClippingBehavior" ptr val

instance Offset "sType" VkPhysicalDevicePointClippingPropertiesKHR where
  rawOffset = #{offset VkPhysicalDevicePointClippingPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePointClippingPropertiesKHR where
  rawOffset = #{offset VkPhysicalDevicePointClippingPropertiesKHR, pNext}

instance Offset "pointClippingBehavior" VkPhysicalDevicePointClippingPropertiesKHR where
  rawOffset = #{offset VkPhysicalDevicePointClippingPropertiesKHR, pointClippingBehavior}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePointClippingPropertiesKHR where

#endif