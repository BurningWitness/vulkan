{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkImportMetalBufferInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMetalBufferInfoEXT" #-} VkImportMetalBufferInfoEXT =
       VkImportMetalBufferInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mtlBuffer :: MTLBuffer_id
         }

instance Storable VkImportMetalBufferInfoEXT where
  sizeOf    _ = #{size      VkImportMetalBufferInfoEXT}
  alignment _ = #{alignment VkImportMetalBufferInfoEXT}

  peek ptr = 
    VkImportMetalBufferInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mtlBuffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mtlBuffer" ptr val

instance Offset "sType" VkImportMetalBufferInfoEXT where
  rawOffset = #{offset VkImportMetalBufferInfoEXT, sType}

instance Offset "pNext" VkImportMetalBufferInfoEXT where
  rawOffset = #{offset VkImportMetalBufferInfoEXT, pNext}

instance Offset "mtlBuffer" VkImportMetalBufferInfoEXT where
  rawOffset = #{offset VkImportMetalBufferInfoEXT, mtlBuffer}

#else

module Vulkan.Types.Struct.VkImportMetalBufferInfoEXT where

#endif