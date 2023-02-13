{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Struct.VkSemaphoreSignalInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreSignalInfoKHR" #-} VkSemaphoreSignalInfoKHR =
       VkSemaphoreSignalInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , value :: #{type uint64_t}
         }

instance Storable VkSemaphoreSignalInfoKHR where
  sizeOf    _ = #{size      VkSemaphoreSignalInfoKHR}
  alignment _ = #{alignment VkSemaphoreSignalInfoKHR}

  peek ptr = 
    VkSemaphoreSignalInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"semaphore" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"value" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"value" ptr val

instance Offset "sType" VkSemaphoreSignalInfoKHR where
  rawOffset = #{offset VkSemaphoreSignalInfoKHR, sType}

instance Offset "pNext" VkSemaphoreSignalInfoKHR where
  rawOffset = #{offset VkSemaphoreSignalInfoKHR, pNext}

instance Offset "semaphore" VkSemaphoreSignalInfoKHR where
  rawOffset = #{offset VkSemaphoreSignalInfoKHR, semaphore}

instance Offset "value" VkSemaphoreSignalInfoKHR where
  rawOffset = #{offset VkSemaphoreSignalInfoKHR, value}

#else

module Vulkan.Types.Struct.VkSemaphoreSignalInfoKHR where

#endif