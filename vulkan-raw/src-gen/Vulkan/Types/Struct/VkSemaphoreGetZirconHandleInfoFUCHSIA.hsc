{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_external_semaphore

module Vulkan.Types.Struct.VkSemaphoreGetZirconHandleInfoFUCHSIA where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreGetZirconHandleInfoFUCHSIA" #-} VkSemaphoreGetZirconHandleInfoFUCHSIA =
       VkSemaphoreGetZirconHandleInfoFUCHSIA
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         }

instance Storable VkSemaphoreGetZirconHandleInfoFUCHSIA where
  sizeOf    _ = #{size      VkSemaphoreGetZirconHandleInfoFUCHSIA}
  alignment _ = #{alignment VkSemaphoreGetZirconHandleInfoFUCHSIA}

  peek ptr = 
    VkSemaphoreGetZirconHandleInfoFUCHSIA
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkSemaphoreGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkSemaphoreGetZirconHandleInfoFUCHSIA, sType}

instance Offset "pNext" VkSemaphoreGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkSemaphoreGetZirconHandleInfoFUCHSIA, pNext}

instance Offset "semaphore" VkSemaphoreGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkSemaphoreGetZirconHandleInfoFUCHSIA, semaphore}

instance Offset "handleType" VkSemaphoreGetZirconHandleInfoFUCHSIA where
  rawOffset = #{offset VkSemaphoreGetZirconHandleInfoFUCHSIA, handleType}

#else

module Vulkan.Types.Struct.VkSemaphoreGetZirconHandleInfoFUCHSIA where

#endif