{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_surface_maintenance1

module Vulkan.Types.Struct.VkSurfacePresentModeEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfacePresentModeEXT" #-} VkSurfacePresentModeEXT =
       VkSurfacePresentModeEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentMode :: VkPresentModeKHR
         }

instance Storable VkSurfacePresentModeEXT where
  sizeOf    _ = #{size      VkSurfacePresentModeEXT}
  alignment _ = #{alignment VkSurfacePresentModeEXT}

  peek ptr = 
    VkSurfacePresentModeEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentMode" ptr val

instance Offset "sType" VkSurfacePresentModeEXT where
  rawOffset = #{offset VkSurfacePresentModeEXT, sType}

instance Offset "pNext" VkSurfacePresentModeEXT where
  rawOffset = #{offset VkSurfacePresentModeEXT, pNext}

instance Offset "presentMode" VkSurfacePresentModeEXT where
  rawOffset = #{offset VkSurfacePresentModeEXT, presentMode}

#else

module Vulkan.Types.Struct.VkSurfacePresentModeEXT where

#endif