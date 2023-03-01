{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Types.Struct.VkD3D12FenceSubmitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkD3D12FenceSubmitInfoKHR" #-} VkD3D12FenceSubmitInfoKHR =
       VkD3D12FenceSubmitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreValuesCount :: #{type uint32_t}
         , pWaitSemaphoreValues :: Ptr #{type uint64_t}
         , signalSemaphoreValuesCount :: #{type uint32_t}
         , pSignalSemaphoreValues :: Ptr #{type uint64_t}
         }

instance Storable VkD3D12FenceSubmitInfoKHR where
  sizeOf    _ = #{size      VkD3D12FenceSubmitInfoKHR}
  alignment _ = #{alignment VkD3D12FenceSubmitInfoKHR}

  peek ptr = 
    VkD3D12FenceSubmitInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"waitSemaphoreValuesCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pWaitSemaphoreValues" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"signalSemaphoreValuesCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSignalSemaphoreValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreValuesCount" ptr val
    pokeField @"pWaitSemaphoreValues" ptr val
    pokeField @"signalSemaphoreValuesCount" ptr val
    pokeField @"pSignalSemaphoreValues" ptr val

instance Offset "sType" VkD3D12FenceSubmitInfoKHR where
  rawOffset = #{offset VkD3D12FenceSubmitInfoKHR, sType}

instance Offset "pNext" VkD3D12FenceSubmitInfoKHR where
  rawOffset = #{offset VkD3D12FenceSubmitInfoKHR, pNext}

instance Offset "waitSemaphoreValuesCount" VkD3D12FenceSubmitInfoKHR where
  rawOffset = #{offset VkD3D12FenceSubmitInfoKHR, waitSemaphoreValuesCount}

instance Offset "pWaitSemaphoreValues" VkD3D12FenceSubmitInfoKHR where
  rawOffset = #{offset VkD3D12FenceSubmitInfoKHR, pWaitSemaphoreValues}

instance Offset "signalSemaphoreValuesCount" VkD3D12FenceSubmitInfoKHR where
  rawOffset = #{offset VkD3D12FenceSubmitInfoKHR, signalSemaphoreValuesCount}

instance Offset "pSignalSemaphoreValues" VkD3D12FenceSubmitInfoKHR where
  rawOffset = #{offset VkD3D12FenceSubmitInfoKHR, pSignalSemaphoreValues}

#else

module Vulkan.Types.Struct.VkD3D12FenceSubmitInfoKHR where

#endif