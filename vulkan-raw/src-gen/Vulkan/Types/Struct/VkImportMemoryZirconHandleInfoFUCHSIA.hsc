{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_memory

module Vulkan.Types.Struct.VkImportMemoryZirconHandleInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMemoryZirconHandleInfoFUCHSIA" #-} VkImportMemoryZirconHandleInfoFUCHSIA =
       VkImportMemoryZirconHandleInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         , handle :: ZxHandleT
         }

instance Storable VkImportMemoryZirconHandleInfoFUCHSIA where
  sizeOf    _ = #{size      VkImportMemoryZirconHandleInfoFUCHSIA}
  alignment _ = #{alignment VkImportMemoryZirconHandleInfoFUCHSIA}

  peek ptr = 
    VkImportMemoryZirconHandleInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"handle" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val
    pokeField @"handle" ptr val

instance Offset "sType" VkImportMemoryZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportMemoryZirconHandleInfoFUCHSIA, sType}

instance Offset "pNext" VkImportMemoryZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportMemoryZirconHandleInfoFUCHSIA, pNext}

instance Offset "handleType" VkImportMemoryZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportMemoryZirconHandleInfoFUCHSIA, handleType}

instance Offset "handle" VkImportMemoryZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportMemoryZirconHandleInfoFUCHSIA, handle}

#else

module Vulkan.Types.Struct.VkImportMemoryZirconHandleInfoFUCHSIA where

#endif