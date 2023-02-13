{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_fd

module Vulkan.Types.Struct.VkImportSemaphoreFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkSemaphoreImportFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImportSemaphoreFdInfoKHR" #-} VkImportSemaphoreFdInfoKHR =
       VkImportSemaphoreFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , flags :: VkSemaphoreImportFlags
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         , fd :: #{type int}
         }

instance Storable VkImportSemaphoreFdInfoKHR where
  sizeOf    _ = #{size      VkImportSemaphoreFdInfoKHR}
  alignment _ = #{alignment VkImportSemaphoreFdInfoKHR}

  peek ptr = 
    VkImportSemaphoreFdInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"fd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"fd" ptr val

instance Offset "sType" VkImportSemaphoreFdInfoKHR where
  rawOffset = #{offset VkImportSemaphoreFdInfoKHR, sType}

instance Offset "pNext" VkImportSemaphoreFdInfoKHR where
  rawOffset = #{offset VkImportSemaphoreFdInfoKHR, pNext}

instance Offset "semaphore" VkImportSemaphoreFdInfoKHR where
  rawOffset = #{offset VkImportSemaphoreFdInfoKHR, semaphore}

instance Offset "flags" VkImportSemaphoreFdInfoKHR where
  rawOffset = #{offset VkImportSemaphoreFdInfoKHR, flags}

instance Offset "handleType" VkImportSemaphoreFdInfoKHR where
  rawOffset = #{offset VkImportSemaphoreFdInfoKHR, handleType}

instance Offset "fd" VkImportSemaphoreFdInfoKHR where
  rawOffset = #{offset VkImportSemaphoreFdInfoKHR, fd}

#else

module Vulkan.Types.Struct.VkImportSemaphoreFdInfoKHR where

#endif