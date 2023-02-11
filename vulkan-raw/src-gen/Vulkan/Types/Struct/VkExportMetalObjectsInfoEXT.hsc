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
  sizeOf    _ = #{size      struct VkExportMetalObjectsInfoEXT}
  alignment _ = #{alignment struct VkExportMetalObjectsInfoEXT}

  peek ptr = 
    VkExportMetalObjectsInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val

instance Offset "sType" VkExportMetalObjectsInfoEXT where
  rawOffset = #{offset struct VkExportMetalObjectsInfoEXT, sType}

instance Offset "pNext" VkExportMetalObjectsInfoEXT where
  rawOffset = #{offset struct VkExportMetalObjectsInfoEXT, pNext}

#else

module Vulkan.Types.Struct.VkExportMetalObjectsInfoEXT where

#endif