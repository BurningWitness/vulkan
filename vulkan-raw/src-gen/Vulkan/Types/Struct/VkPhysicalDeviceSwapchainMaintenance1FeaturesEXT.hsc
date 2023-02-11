{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Types.Struct.VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT" #-} VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT =
       VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainMaintenance1 :: VkBool32
         }

instance Storable VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchainMaintenance1" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainMaintenance1" ptr val

instance Offset "sType" VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT, pNext}

instance Offset "swapchainMaintenance1" VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT, swapchainMaintenance1}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT where

#endif