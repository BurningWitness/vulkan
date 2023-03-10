{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)

module Vulkan.Types.Struct.VkDeviceGroupPresentCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupPresentCapabilitiesKHR" #-} VkDeviceGroupPresentCapabilitiesKHR =
       VkDeviceGroupPresentCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentMask :: #{type uint32_t}
         , modes :: VkDeviceGroupPresentModeFlagsKHR
         }

instance Storable VkDeviceGroupPresentCapabilitiesKHR where
  sizeOf    _ = #{size      VkDeviceGroupPresentCapabilitiesKHR}
  alignment _ = #{alignment VkDeviceGroupPresentCapabilitiesKHR}

  peek ptr = 
    VkDeviceGroupPresentCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"modes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentMask" ptr val
    pokeField @"modes" ptr val

instance Offset "sType" VkDeviceGroupPresentCapabilitiesKHR where
  rawOffset = #{offset VkDeviceGroupPresentCapabilitiesKHR, sType}

instance Offset "pNext" VkDeviceGroupPresentCapabilitiesKHR where
  rawOffset = #{offset VkDeviceGroupPresentCapabilitiesKHR, pNext}

instance Offset "presentMask" VkDeviceGroupPresentCapabilitiesKHR where
  rawOffset = #{offset VkDeviceGroupPresentCapabilitiesKHR, presentMask}

instance Offset "modes" VkDeviceGroupPresentCapabilitiesKHR where
  rawOffset = #{offset VkDeviceGroupPresentCapabilitiesKHR, modes}

#else

module Vulkan.Types.Struct.VkDeviceGroupPresentCapabilitiesKHR where

#endif