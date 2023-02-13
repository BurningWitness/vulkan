{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalObjectCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExportMetalObjectTypeFlagBitsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalObjectCreateInfoEXT" #-} VkExportMetalObjectCreateInfoEXT =
       VkExportMetalObjectCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exportObjectType :: VkExportMetalObjectTypeFlagBitsEXT
         }

instance Storable VkExportMetalObjectCreateInfoEXT where
  sizeOf    _ = #{size      VkExportMetalObjectCreateInfoEXT}
  alignment _ = #{alignment VkExportMetalObjectCreateInfoEXT}

  peek ptr = 
    VkExportMetalObjectCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exportObjectType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exportObjectType" ptr val

instance Offset "sType" VkExportMetalObjectCreateInfoEXT where
  rawOffset = #{offset VkExportMetalObjectCreateInfoEXT, sType}

instance Offset "pNext" VkExportMetalObjectCreateInfoEXT where
  rawOffset = #{offset VkExportMetalObjectCreateInfoEXT, pNext}

instance Offset "exportObjectType" VkExportMetalObjectCreateInfoEXT where
  rawOffset = #{offset VkExportMetalObjectCreateInfoEXT, exportObjectType}

#else

module Vulkan.Types.Struct.VkExportMetalObjectCreateInfoEXT where

#endif