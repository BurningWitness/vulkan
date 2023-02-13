{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_surface

module Vulkan.Types.Struct.VkMetalSurfaceCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkMetalSurfaceCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMetalSurfaceCreateInfoEXT" #-} VkMetalSurfaceCreateInfoEXT =
       VkMetalSurfaceCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkMetalSurfaceCreateFlagsEXT
         , pLayer :: Ptr CAMetalLayer
         }

instance Storable VkMetalSurfaceCreateInfoEXT where
  sizeOf    _ = #{size      VkMetalSurfaceCreateInfoEXT}
  alignment _ = #{alignment VkMetalSurfaceCreateInfoEXT}

  peek ptr = 
    VkMetalSurfaceCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pLayer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pLayer" ptr val

instance Offset "sType" VkMetalSurfaceCreateInfoEXT where
  rawOffset = #{offset VkMetalSurfaceCreateInfoEXT, sType}

instance Offset "pNext" VkMetalSurfaceCreateInfoEXT where
  rawOffset = #{offset VkMetalSurfaceCreateInfoEXT, pNext}

instance Offset "flags" VkMetalSurfaceCreateInfoEXT where
  rawOffset = #{offset VkMetalSurfaceCreateInfoEXT, flags}

instance Offset "pLayer" VkMetalSurfaceCreateInfoEXT where
  rawOffset = #{offset VkMetalSurfaceCreateInfoEXT, pLayer}

#else

module Vulkan.Types.Struct.VkMetalSurfaceCreateInfoEXT where

#endif