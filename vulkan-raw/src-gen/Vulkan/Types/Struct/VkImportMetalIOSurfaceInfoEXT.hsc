{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkImportMetalIOSurfaceInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMetalIOSurfaceInfoEXT" #-} VkImportMetalIOSurfaceInfoEXT =
       VkImportMetalIOSurfaceInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , ioSurface :: IOSurfaceRef
         }

instance Storable VkImportMetalIOSurfaceInfoEXT where
  sizeOf    _ = #{size      struct VkImportMetalIOSurfaceInfoEXT}
  alignment _ = #{alignment struct VkImportMetalIOSurfaceInfoEXT}

  peek ptr = 
    VkImportMetalIOSurfaceInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"ioSurface" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"ioSurface" ptr val

instance Offset "sType" VkImportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset struct VkImportMetalIOSurfaceInfoEXT, sType}

instance Offset "pNext" VkImportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset struct VkImportMetalIOSurfaceInfoEXT, pNext}

instance Offset "ioSurface" VkImportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset struct VkImportMetalIOSurfaceInfoEXT, ioSurface}

#else

module Vulkan.Types.Struct.VkImportMetalIOSurfaceInfoEXT where

#endif