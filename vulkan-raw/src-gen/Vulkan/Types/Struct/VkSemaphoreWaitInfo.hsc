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
  sizeOf    _ = #{size      struct VkSemaphoreWaitInfo}
  alignment _ = #{alignment struct VkSemaphoreWaitInfo}

  peek ptr = 
    VkSemaphoreWaitInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"semaphoreCount" ptr)
       <*> peek (offset @"pSemaphores" ptr)
       <*> peek (offset @"pValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"semaphoreCount" ptr val
    pokeField @"pSemaphores" ptr val
    pokeField @"pValues" ptr val

instance Offset "sType" VkSemaphoreWaitInfo where
  rawOffset = #{offset struct VkSemaphoreWaitInfo, sType}

instance Offset "pNext" VkSemaphoreWaitInfo where
  rawOffset = #{offset struct VkSemaphoreWaitInfo, pNext}

instance Offset "flags" VkSemaphoreWaitInfo where
  rawOffset = #{offset struct VkSemaphoreWaitInfo, flags}

instance Offset "semaphoreCount" VkSemaphoreWaitInfo where
  rawOffset = #{offset struct VkSemaphoreWaitInfo, semaphoreCount}

instance Offset "pSemaphores" VkSemaphoreWaitInfo where
  rawOffset = #{offset struct VkSemaphoreWaitInfo, pSemaphores}

instance Offset "pValues" VkSemaphoreWaitInfo where
  rawOffset = #{offset struct VkSemaphoreWaitInfo, pValues}

#else

module Vulkan.Types.Struct.VkSemaphoreWaitInfo where

#endif