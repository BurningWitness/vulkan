{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalBufferInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalBufferInfoEXT" #-} VkExportMetalBufferInfoEXT =
       VkExportMetalBufferInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         , mtlBuffer :: MTLBuffer_id
         }

instance Storable VkExportMetalBufferInfoEXT where
  sizeOf    _ = #{size      VkExportMetalBufferInfoEXT}
  alignment _ = #{alignment VkExportMetalBufferInfoEXT}

  peek ptr = 
    VkExportMetalBufferInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memory" ptr)
       <*> peek (offset @"mtlBuffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val
    pokeField @"mtlBuffer" ptr val

instance Offset "sType" VkExportMetalBufferInfoEXT where
  rawOffset = #{offset VkExportMetalBufferInfoEXT, sType}

instance Offset "pNext" VkExportMetalBufferInfoEXT where
  rawOffset = #{offset VkExportMetalBufferInfoEXT, pNext}

instance Offset "memory" VkExportMetalBufferInfoEXT where
  rawOffset = #{offset VkExportMetalBufferInfoEXT, memory}

instance Offset "mtlBuffer" VkExportMetalBufferInfoEXT where
  rawOffset = #{offset VkExportMetalBufferInfoEXT, mtlBuffer}

#else

module Vulkan.Types.Struct.VkExportMetalBufferInfoEXT where

#endif