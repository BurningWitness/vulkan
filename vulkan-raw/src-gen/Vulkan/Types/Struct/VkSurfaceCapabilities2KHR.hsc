{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_surface_capabilities2

module Vulkan.Types.Struct.VkSurfaceCapabilities2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceCapabilities2KHR" #-} VkSurfaceCapabilities2KHR =
       VkSurfaceCapabilities2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , surfaceCapabilities :: VkSurfaceCapabilitiesKHR
         }

instance Storable VkSurfaceCapabilities2KHR where
  sizeOf    _ = #{size      VkSurfaceCapabilities2KHR}
  alignment _ = #{alignment VkSurfaceCapabilities2KHR}

  peek ptr = 
    VkSurfaceCapabilities2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"surfaceCapabilities" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"surfaceCapabilities" ptr val

instance Offset "sType" VkSurfaceCapabilities2KHR where
  rawOffset = #{offset VkSurfaceCapabilities2KHR, sType}

instance Offset "pNext" VkSurfaceCapabilities2KHR where
  rawOffset = #{offset VkSurfaceCapabilities2KHR, pNext}

instance Offset "surfaceCapabilities" VkSurfaceCapabilities2KHR where
  rawOffset = #{offset VkSurfaceCapabilities2KHR, surfaceCapabilities}

#else

module Vulkan.Types.Struct.VkSurfaceCapabilities2KHR where

#endif