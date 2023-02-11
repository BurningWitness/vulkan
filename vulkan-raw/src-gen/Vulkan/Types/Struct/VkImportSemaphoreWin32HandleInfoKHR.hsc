{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Types.Struct.VkImportSemaphoreWin32HandleInfoKHR where

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



data {-# CTYPE "vulkan/vulkan.h" "VkImportSemaphoreWin32HandleInfoKHR" #-} VkImportSemaphoreWin32HandleInfoKHR =
       VkImportSemaphoreWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , flags :: VkSemaphoreImportFlags
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         , handle :: HANDLE
         , name :: LPCWSTR
         }

instance Storable VkImportSemaphoreWin32HandleInfoKHR where
  sizeOf    _ = #{size      struct VkImportSemaphoreWin32HandleInfoKHR}
  alignment _ = #{alignment struct VkImportSemaphoreWin32HandleInfoKHR}

  peek ptr = 
    VkImportSemaphoreWin32HandleInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"handle" ptr)
       <*> peek (offset @"name" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"handle" ptr val
    pokeField @"name" ptr val

instance Offset "sType" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, sType}

instance Offset "pNext" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, pNext}

instance Offset "semaphore" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, semaphore}

instance Offset "flags" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, flags}

instance Offset "handleType" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, handleType}

instance Offset "handle" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, handle}

instance Offset "name" VkImportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportSemaphoreWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkImportSemaphoreWin32HandleInfoKHR where

#endif