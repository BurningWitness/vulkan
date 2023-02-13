{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Struct.VkSemaphoreTypeCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSemaphoreType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreTypeCreateInfoKHR" #-} VkSemaphoreTypeCreateInfoKHR =
       VkSemaphoreTypeCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphoreType :: VkSemaphoreType
         , initialValue :: #{type uint64_t}
         }

instance Storable VkSemaphoreTypeCreateInfoKHR where
  sizeOf    _ = #{size      VkSemaphoreTypeCreateInfoKHR}
  alignment _ = #{alignment VkSemaphoreTypeCreateInfoKHR}

  peek ptr = 
    VkSemaphoreTypeCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"semaphoreType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialValue" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphoreType" ptr val
    pokeField @"initialValue" ptr val

instance Offset "sType" VkSemaphoreTypeCreateInfoKHR where
  rawOffset = #{offset VkSemaphoreTypeCreateInfoKHR, sType}

instance Offset "pNext" VkSemaphoreTypeCreateInfoKHR where
  rawOffset = #{offset VkSemaphoreTypeCreateInfoKHR, pNext}

instance Offset "semaphoreType" VkSemaphoreTypeCreateInfoKHR where
  rawOffset = #{offset VkSemaphoreTypeCreateInfoKHR, semaphoreType}

instance Offset "initialValue" VkSemaphoreTypeCreateInfoKHR where
  rawOffset = #{offset VkSemaphoreTypeCreateInfoKHR, initialValue}

#else

module Vulkan.Types.Struct.VkSemaphoreTypeCreateInfoKHR where

#endif