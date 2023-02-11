{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_fd

module Vulkan.Types.Struct.VkSemaphoreGetFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreGetFdInfoKHR" #-} VkSemaphoreGetFdInfoKHR =
       VkSemaphoreGetFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         }

instance Storable VkSemaphoreGetFdInfoKHR where
  sizeOf    _ = #{size      struct VkSemaphoreGetFdInfoKHR}
  alignment _ = #{alignment struct VkSemaphoreGetFdInfoKHR}

  peek ptr = 
    VkSemaphoreGetFdInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkSemaphoreGetFdInfoKHR where
  rawOffset = #{offset struct VkSemaphoreGetFdInfoKHR, sType}

instance Offset "pNext" VkSemaphoreGetFdInfoKHR where
  rawOffset = #{offset struct VkSemaphoreGetFdInfoKHR, pNext}

instance Offset "semaphore" VkSemaphoreGetFdInfoKHR where
  rawOffset = #{offset struct VkSemaphoreGetFdInfoKHR, semaphore}

instance Offset "handleType" VkSemaphoreGetFdInfoKHR where
  rawOffset = #{offset struct VkSemaphoreGetFdInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkSemaphoreGetFdInfoKHR where

#endif