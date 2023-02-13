{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Types.Struct.VkSemaphoreGetWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreGetWin32HandleInfoKHR" #-} VkSemaphoreGetWin32HandleInfoKHR =
       VkSemaphoreGetWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         }

instance Storable VkSemaphoreGetWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkSemaphoreGetWin32HandleInfoKHR}
  alignment _ = #{alignment VkSemaphoreGetWin32HandleInfoKHR}

  peek ptr = 
    VkSemaphoreGetWin32HandleInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkSemaphoreGetWin32HandleInfoKHR where
  rawOffset = #{offset VkSemaphoreGetWin32HandleInfoKHR, sType}

instance Offset "pNext" VkSemaphoreGetWin32HandleInfoKHR where
  rawOffset = #{offset VkSemaphoreGetWin32HandleInfoKHR, pNext}

instance Offset "semaphore" VkSemaphoreGetWin32HandleInfoKHR where
  rawOffset = #{offset VkSemaphoreGetWin32HandleInfoKHR, semaphore}

instance Offset "handleType" VkSemaphoreGetWin32HandleInfoKHR where
  rawOffset = #{offset VkSemaphoreGetWin32HandleInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkSemaphoreGetWin32HandleInfoKHR where

#endif