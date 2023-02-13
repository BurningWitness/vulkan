{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Struct.VkSemaphoreWaitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSemaphoreWaitFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreWaitInfoKHR" #-} VkSemaphoreWaitInfoKHR =
       VkSemaphoreWaitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSemaphoreWaitFlags
         , semaphoreCount :: #{type uint32_t}
         , pSemaphores :: Ptr VkSemaphore
         , pValues :: Ptr #{type uint64_t}
         }

instance Storable VkSemaphoreWaitInfoKHR where
  sizeOf    _ = #{size      VkSemaphoreWaitInfoKHR}
  alignment _ = #{alignment VkSemaphoreWaitInfoKHR}

  peek ptr = 
    VkSemaphoreWaitInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"semaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSemaphores" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"semaphoreCount" ptr val
    pokeField @"pSemaphores" ptr val
    pokeField @"pValues" ptr val

instance Offset "sType" VkSemaphoreWaitInfoKHR where
  rawOffset = #{offset VkSemaphoreWaitInfoKHR, sType}

instance Offset "pNext" VkSemaphoreWaitInfoKHR where
  rawOffset = #{offset VkSemaphoreWaitInfoKHR, pNext}

instance Offset "flags" VkSemaphoreWaitInfoKHR where
  rawOffset = #{offset VkSemaphoreWaitInfoKHR, flags}

instance Offset "semaphoreCount" VkSemaphoreWaitInfoKHR where
  rawOffset = #{offset VkSemaphoreWaitInfoKHR, semaphoreCount}

instance Offset "pSemaphores" VkSemaphoreWaitInfoKHR where
  rawOffset = #{offset VkSemaphoreWaitInfoKHR, pSemaphores}

instance Offset "pValues" VkSemaphoreWaitInfoKHR where
  rawOffset = #{offset VkSemaphoreWaitInfoKHR, pValues}

#else

module Vulkan.Types.Struct.VkSemaphoreWaitInfoKHR where

#endif