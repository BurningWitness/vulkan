{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSemaphoreWaitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSemaphoreWaitFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreWaitInfo" #-} VkSemaphoreWaitInfo =
       VkSemaphoreWaitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSemaphoreWaitFlags
         , semaphoreCount :: #{type uint32_t}
         , pSemaphores :: Ptr VkSemaphore
         , pValues :: Ptr #{type uint64_t}
         }

instance Storable VkSemaphoreWaitInfo where
  sizeOf    _ = #{size      VkSemaphoreWaitInfo}
  alignment _ = #{alignment VkSemaphoreWaitInfo}

  peek ptr = 
    VkSemaphoreWaitInfo
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

instance Offset "sType" VkSemaphoreWaitInfo where
  rawOffset = #{offset VkSemaphoreWaitInfo, sType}

instance Offset "pNext" VkSemaphoreWaitInfo where
  rawOffset = #{offset VkSemaphoreWaitInfo, pNext}

instance Offset "flags" VkSemaphoreWaitInfo where
  rawOffset = #{offset VkSemaphoreWaitInfo, flags}

instance Offset "semaphoreCount" VkSemaphoreWaitInfo where
  rawOffset = #{offset VkSemaphoreWaitInfo, semaphoreCount}

instance Offset "pSemaphores" VkSemaphoreWaitInfo where
  rawOffset = #{offset VkSemaphoreWaitInfo, pSemaphores}

instance Offset "pValues" VkSemaphoreWaitInfo where
  rawOffset = #{offset VkSemaphoreWaitInfo, pValues}

#else

module Vulkan.Types.Struct.VkSemaphoreWaitInfo where

#endif