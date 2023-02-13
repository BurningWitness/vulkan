{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_semaphore

module Vulkan.Types.Struct.VkImportSemaphoreZirconHandleInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkSemaphoreImportFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImportSemaphoreZirconHandleInfoFUCHSIA" #-} VkImportSemaphoreZirconHandleInfoFUCHSIA =
       VkImportSemaphoreZirconHandleInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , flags :: VkSemaphoreImportFlags
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         , zirconHandle :: ZxHandleT
         }

instance Storable VkImportSemaphoreZirconHandleInfoFUCHSIA where
  sizeOf    _ = #{size      VkImportSemaphoreZirconHandleInfoFUCHSIA}
  alignment _ = #{alignment VkImportSemaphoreZirconHandleInfoFUCHSIA}

  peek ptr = 
    VkImportSemaphoreZirconHandleInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"zirconHandle" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"zirconHandle" ptr val

instance Offset "sType" VkImportSemaphoreZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportSemaphoreZirconHandleInfoFUCHSIA, sType}

instance Offset "pNext" VkImportSemaphoreZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportSemaphoreZirconHandleInfoFUCHSIA, pNext}

instance Offset "semaphore" VkImportSemaphoreZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportSemaphoreZirconHandleInfoFUCHSIA, semaphore}

instance Offset "flags" VkImportSemaphoreZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportSemaphoreZirconHandleInfoFUCHSIA, flags}

instance Offset "handleType" VkImportSemaphoreZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportSemaphoreZirconHandleInfoFUCHSIA, handleType}

instance Offset "zirconHandle" VkImportSemaphoreZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkImportSemaphoreZirconHandleInfoFUCHSIA, zirconHandle}

#else

module Vulkan.Types.Struct.VkImportSemaphoreZirconHandleInfoFUCHSIA where

#endif