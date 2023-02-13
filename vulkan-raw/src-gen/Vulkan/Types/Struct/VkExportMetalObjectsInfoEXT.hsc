{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalObjectsInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalObjectsInfoEXT" #-} VkExportMetalObjectsInfoEXT =
       VkExportMetalObjectsInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         }

instance Storable VkExportMetalObjectsInfoEXT where
  sizeOf    _ = #{size      VkExportMetalObjectsInfoEXT}
  alignment _ = #{alignment VkExportMetalObjectsInfoEXT}

  peek ptr = 
    VkExportMetalObjectsInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val

instance Offset "sType" VkExportMetalObjectsInfoEXT where
  rawOffset = #{offset VkExportMetalObjectsInfoEXT, sType}

instance Offset "pNext" VkExportMetalObjectsInfoEXT where
  rawOffset = #{offset VkExportMetalObjectsInfoEXT, pNext}

#else

module Vulkan.Types.Struct.VkExportMetalObjectsInfoEXT where

#endif