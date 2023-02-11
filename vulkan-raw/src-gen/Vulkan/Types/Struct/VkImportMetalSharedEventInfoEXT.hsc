{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkImportMetalSharedEventInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMetalSharedEventInfoEXT" #-} VkImportMetalSharedEventInfoEXT =
       VkImportMetalSharedEventInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mtlSharedEvent :: MTLSharedEvent_id
         }

instance Storable VkImportMetalSharedEventInfoEXT where
  sizeOf    _ = #{size      struct VkImportMetalSharedEventInfoEXT}
  alignment _ = #{alignment struct VkImportMetalSharedEventInfoEXT}

  peek ptr = 
    VkImportMetalSharedEventInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mtlSharedEvent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mtlSharedEvent" ptr val

instance Offset "sType" VkImportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkImportMetalSharedEventInfoEXT, sType}

instance Offset "pNext" VkImportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkImportMetalSharedEventInfoEXT, pNext}

instance Offset "mtlSharedEvent" VkImportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkImportMetalSharedEventInfoEXT, mtlSharedEvent}

#else

module Vulkan.Types.Struct.VkImportMetalSharedEventInfoEXT where

#endif