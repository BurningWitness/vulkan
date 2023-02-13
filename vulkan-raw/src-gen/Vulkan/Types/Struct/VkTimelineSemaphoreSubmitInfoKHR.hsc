{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Struct.VkTimelineSemaphoreSubmitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkTimelineSemaphoreSubmitInfoKHR" #-} VkTimelineSemaphoreSubmitInfoKHR =
       VkTimelineSemaphoreSubmitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreValueCount :: #{type uint32_t}
         , pWaitSemaphoreValues :: Ptr #{type uint64_t}
         , signalSemaphoreValueCount :: #{type uint32_t}
         , pSignalSemaphoreValues :: Ptr #{type uint64_t}
         }

instance Storable VkTimelineSemaphoreSubmitInfoKHR where
  sizeOf    _ = #{size      VkTimelineSemaphoreSubmitInfoKHR}
  alignment _ = #{alignment VkTimelineSemaphoreSubmitInfoKHR}

  peek ptr = 
    VkTimelineSemaphoreSubmitInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"waitSemaphoreValueCount" ptr)
       <*> peek (offset @"pWaitSemaphoreValues" ptr)
       <*> peek (offset @"signalSemaphoreValueCount" ptr)
       <*> peek (offset @"pSignalSemaphoreValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreValueCount" ptr val
    pokeField @"pWaitSemaphoreValues" ptr val
    pokeField @"signalSemaphoreValueCount" ptr val
    pokeField @"pSignalSemaphoreValues" ptr val

instance Offset "sType" VkTimelineSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkTimelineSemaphoreSubmitInfoKHR, sType}

instance Offset "pNext" VkTimelineSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkTimelineSemaphoreSubmitInfoKHR, pNext}

instance Offset "waitSemaphoreValueCount" VkTimelineSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkTimelineSemaphoreSubmitInfoKHR, waitSemaphoreValueCount}

instance Offset "pWaitSemaphoreValues" VkTimelineSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkTimelineSemaphoreSubmitInfoKHR, pWaitSemaphoreValues}

instance Offset "signalSemaphoreValueCount" VkTimelineSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkTimelineSemaphoreSubmitInfoKHR, signalSemaphoreValueCount}

instance Offset "pSignalSemaphoreValues" VkTimelineSemaphoreSubmitInfoKHR where
  rawOffset = #{offset VkTimelineSemaphoreSubmitInfoKHR, pSignalSemaphoreValues}

#else

module Vulkan.Types.Struct.VkTimelineSemaphoreSubmitInfoKHR where

#endif