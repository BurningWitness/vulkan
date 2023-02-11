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
  sizeOf    _ = #{size      struct VkSurfacePresentModeEXT}
  alignment _ = #{alignment struct VkSurfacePresentModeEXT}

  peek ptr = 
    VkSurfacePresentModeEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"presentMode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentMode" ptr val

instance Offset "sType" VkSurfacePresentModeEXT where
  rawOffset = #{offset struct VkSurfacePresentModeEXT, sType}

instance Offset "pNext" VkSurfacePresentModeEXT where
  rawOffset = #{offset struct VkSurfacePresentModeEXT, pNext}

instance Offset "presentMode" VkSurfacePresentModeEXT where
  rawOffset = #{offset struct VkSurfacePresentModeEXT, presentMode}

#else

module Vulkan.Types.Struct.VkSurfacePresentModeEXT where

#endif