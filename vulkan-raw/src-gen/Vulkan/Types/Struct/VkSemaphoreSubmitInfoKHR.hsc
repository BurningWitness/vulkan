{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkSemaphoreSubmitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreSubmitInfoKHR" #-} VkSemaphoreSubmitInfoKHR =
       VkSemaphoreSubmitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , value :: #{type uint64_t}
         , stageMask :: VkPipelineStageFlags2
         , deviceIndex :: #{type uint32_t}
         }

instance Storable VkSemaphoreSubmitInfoKHR where
  sizeOf    _ = #{size      VkSemaphoreSubmitInfoKHR}
  alignment _ = #{alignment VkSemaphoreSubmitInfoKHR}

  peek ptr = 
    VkSemaphoreSubmitInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"semaphore" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"value" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"value" ptr val
    pokeField @"stageMask" ptr val
    pokeField @"deviceIndex" ptr val

instance Offset "sType" VkSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkSemaphoreSubmitInfoKHR, sType}

instance Offset "pNext" VkSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkSemaphoreSubmitInfoKHR, pNext}

instance Offset "semaphore" VkSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkSemaphoreSubmitInfoKHR, semaphore}

instance Offset "value" VkSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkSemaphoreSubmitInfoKHR, value}

instance Offset "stageMask" VkSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkSemaphoreSubmitInfoKHR, stageMask}

instance Offset "deviceIndex" VkSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkSemaphoreSubmitInfoKHR, deviceIndex}

#else

module Vulkan.Types.Struct.VkSemaphoreSubmitInfoKHR where

#endif