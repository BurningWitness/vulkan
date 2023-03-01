{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalIOSurfaceInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalIOSurfaceInfoEXT" #-} VkExportMetalIOSurfaceInfoEXT =
       VkExportMetalIOSurfaceInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         , ioSurface :: IOSurfaceRef
         }

instance Storable VkExportMetalIOSurfaceInfoEXT where
  sizeOf    _ = #{size      VkExportMetalIOSurfaceInfoEXT}
  alignment _ = #{alignment VkExportMetalIOSurfaceInfoEXT}

  peek ptr = 
    VkExportMetalIOSurfaceInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"image" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ioSurface" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"ioSurface" ptr val

instance Offset "sType" VkExportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset VkExportMetalIOSurfaceInfoEXT, sType}

instance Offset "pNext" VkExportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset VkExportMetalIOSurfaceInfoEXT, pNext}

instance Offset "image" VkExportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset VkExportMetalIOSurfaceInfoEXT, image}

instance Offset "ioSurface" VkExportMetalIOSurfaceInfoEXT where
  rawOffset = #{offset VkExportMetalIOSurfaceInfoEXT, ioSurface}

#else

module Vulkan.Types.Struct.VkExportMetalIOSurfaceInfoEXT where

#endif