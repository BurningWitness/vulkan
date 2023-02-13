{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_surface_capabilities2

module Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSurfaceInfo2KHR" #-} VkPhysicalDeviceSurfaceInfo2KHR =
       VkPhysicalDeviceSurfaceInfo2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , surface :: VkSurfaceKHR
         }

instance Storable VkPhysicalDeviceSurfaceInfo2KHR where
  sizeOf    _ = #{size      VkPhysicalDeviceSurfaceInfo2KHR}
  alignment _ = #{alignment VkPhysicalDeviceSurfaceInfo2KHR}

  peek ptr = 
    VkPhysicalDeviceSurfaceInfo2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"surface" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"surface" ptr val

instance Offset "sType" VkPhysicalDeviceSurfaceInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSurfaceInfo2KHR, sType}

instance Offset "pNext" VkPhysicalDeviceSurfaceInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSurfaceInfo2KHR, pNext}

instance Offset "surface" VkPhysicalDeviceSurfaceInfo2KHR where
  rawOffset = #{offset VkPhysicalDeviceSurfaceInfo2KHR, surface}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR where

#endif