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
  sizeOf    _ = #{size      struct VkExportMetalObjectCreateInfoEXT}
  alignment _ = #{alignment struct VkExportMetalObjectCreateInfoEXT}

  peek ptr = 
    VkExportMetalObjectCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"exportObjectType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exportObjectType" ptr val

instance Offset "sType" VkExportMetalObjectCreateInfoEXT where
  rawOffset = #{offset struct VkExportMetalObjectCreateInfoEXT, sType}

instance Offset "pNext" VkExportMetalObjectCreateInfoEXT where
  rawOffset = #{offset struct VkExportMetalObjectCreateInfoEXT, pNext}

instance Offset "exportObjectType" VkExportMetalObjectCreateInfoEXT where
  rawOffset = #{offset struct VkExportMetalObjectCreateInfoEXT, exportObjectType}

#else

module Vulkan.Types.Struct.VkExportMetalObjectCreateInfoEXT where

#endif