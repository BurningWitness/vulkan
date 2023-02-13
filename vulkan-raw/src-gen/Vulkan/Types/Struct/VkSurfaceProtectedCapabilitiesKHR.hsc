{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface_protected_capabilities

module Vulkan.Types.Struct.VkSurfaceProtectedCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceProtectedCapabilitiesKHR" #-} VkSurfaceProtectedCapabilitiesKHR =
       VkSurfaceProtectedCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportsProtected :: VkBool32 -- ^ Represents if surface can be protected
         }

instance Storable VkSurfaceProtectedCapabilitiesKHR where
  sizeOf    _ = #{size      VkSurfaceProtectedCapabilitiesKHR}
  alignment _ = #{alignment VkSurfaceProtectedCapabilitiesKHR}

  peek ptr = 
    VkSurfaceProtectedCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportsProtected" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportsProtected" ptr val

instance Offset "sType" VkSurfaceProtectedCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceProtectedCapabilitiesKHR, sType}

instance Offset "pNext" VkSurfaceProtectedCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceProtectedCapabilitiesKHR, pNext}

instance Offset "supportsProtected" VkSurfaceProtectedCapabilitiesKHR where
  rawOffset = #{offset VkSurfaceProtectedCapabilitiesKHR, supportsProtected}

#else

module Vulkan.Types.Struct.VkSurfaceProtectedCapabilitiesKHR where

#endif