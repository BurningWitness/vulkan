{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_surface_maintenance1

module Vulkan.Types.Struct.VkSurfacePresentModeCompatibilityEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfacePresentModeCompatibilityEXT" #-} VkSurfacePresentModeCompatibilityEXT =
       VkSurfacePresentModeCompatibilityEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentModeCount :: #{type uint32_t}
         , pPresentModes :: Ptr VkPresentModeKHR -- ^ Output list of present modes compatible with the one specified in VkSurfacePresentModeEXT
         }

instance Storable VkSurfacePresentModeCompatibilityEXT where
  sizeOf    _ = #{size      VkSurfacePresentModeCompatibilityEXT}
  alignment _ = #{alignment VkSurfacePresentModeCompatibilityEXT}

  peek ptr = 
    VkSurfacePresentModeCompatibilityEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentModeCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pPresentModes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentModeCount" ptr val
    pokeField @"pPresentModes" ptr val

instance Offset "sType" VkSurfacePresentModeCompatibilityEXT where
  rawOffset = #{offset VkSurfacePresentModeCompatibilityEXT, sType}

instance Offset "pNext" VkSurfacePresentModeCompatibilityEXT where
  rawOffset = #{offset VkSurfacePresentModeCompatibilityEXT, pNext}

instance Offset "presentModeCount" VkSurfacePresentModeCompatibilityEXT where
  rawOffset = #{offset VkSurfacePresentModeCompatibilityEXT, presentModeCount}

instance Offset "pPresentModes" VkSurfacePresentModeCompatibilityEXT where
  rawOffset = #{offset VkSurfacePresentModeCompatibilityEXT, pPresentModes}

#else

module Vulkan.Types.Struct.VkSurfacePresentModeCompatibilityEXT where

#endif